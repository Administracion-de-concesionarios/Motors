package co.portafolio.motors.ing.sis.proyecto.controlador;

import co.portafolio.motors.ing.sis.proyecto.modelo.SQLstatement;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.scene.image.ImageView;

/**
 * FXML Controller class
 *
 * @author Yonier Asprilla
 */
public class logicaConcesionario implements Initializable {


    @FXML private TextField txtNombre;
    @FXML private TextField txtDireccion;
    @FXML private TextField txtTelefono;
    @FXML private Button btnAgregar;
    @FXML private Button btnAtras;
    @FXML private TextField txtId;
    @FXML private ImageView imprimir;
    @FXML private ImageView descargar;

    SQLstatement mensajero = new SQLstatement();


    public logicaConcesionario() {
    }

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {

    }



    private void registrar(){

        int id = Integer.parseInt(txtId.getText());
        String nombre = txtNombre.getText();
        String direccion = txtDireccion.getText();
        int telefono = Integer.parseInt(txtTelefono.getText());
    concesionarioBuilder cb = new concesionarioBuilder();
        if (txtId.equals("") || txtNombre.equals("") || txtDireccion.equals("") || txtTelefono.equals("")){
            Alert alerta = new Alert(Alert.AlertType.ERROR);
            alerta.setHeaderText(null);
            alerta.setTitle("Error");
            alerta.setContentText("Debes llenar todos los campos");
            alerta.showAndWait();
        }else{

            boolean insertar = mensajero.nuevosConcesionarios(id,nombre,direccion,telefono);
            if (insertar == true){
                Alert alerta = new Alert(Alert.AlertType.INFORMATION);
                alerta.setHeaderText(null);
                alerta.setTitle("¡Exito!");
                alerta.setContentText("¡Se ha agregado un nuevo concesionario al equipo!");
                alerta.showAndWait();
                limpiar();
            }else{
                Alert alerta = new Alert(Alert.AlertType.INFORMATION);
                alerta.setHeaderText(null);
                alerta.setTitle("¡Error inesperado!");
                alerta.setContentText("¡No se ha podido agregar el concesionario!");
                alerta.showAndWait();
            }

        }

    }

    private void limpiar(){
        txtId.setText(null);
        txtNombre.setText(null);
        txtDireccion.setText(null);
        txtTelefono.setText(null);

    }

    @FXML
    public void click(ActionEvent actionEvent) {
        Stage stage = (Stage) this.btnAtras.getScene().getWindow();
        stage.close();
    }

    @FXML
    private void onbtnAgregarButtonClicked(ActionEvent event) {
        registrar();
    }
}
