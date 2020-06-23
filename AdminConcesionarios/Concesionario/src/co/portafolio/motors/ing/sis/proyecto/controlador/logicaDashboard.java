package co.portafolio.motors.ing.sis.proyecto.controlador;

import co.portafolio.motors.ing.sis.proyecto.modelo.SQLstatement;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.scene.control.Label;

/**
 * FXML Controller class
 *
 * @author Yonier Asprilla
 */
public class logicaDashboard implements Initializable {



    SQLstatement mensajero = new SQLstatement();
    @FXML
    private Button btnNewUser;
    @FXML
    private Button btnModUser;
    @FXML
    private Button btnSearchUser;
    @FXML
    private Button btnDeleteUser;
    @FXML
    private Label salir;
    @FXML
    private Label minimizar;
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {

    }

    @FXML
    private void registrar(ActionEvent event) {
        try {

        FXMLLoader loader = new FXMLLoader(getClass().getResource("../vista/registrarConcesionario.fxml"));

        Parent root = loader.load();
        //logicaDashboard controlador = loader.getController();
        //controlador.initAttributtes(personas);

        Scene scene = new Scene(root);
        Stage stage = new Stage();
        stage.initStyle(StageStyle.UNDECORATED);
        stage.initModality(Modality.APPLICATION_MODAL);
        stage.setScene(scene);
        stage.showAndWait();

        }catch (IOException e){
            Alert alerta = new Alert(Alert.AlertType.ERROR);
            alerta.setHeaderText(null);
            alerta.setTitle("¡Error inesperado!");
            alerta.setContentText(e.getMessage());
            alerta.showAndWait();
        }
    }

    @FXML
    private void modificar(ActionEvent event) {
    }

    @FXML
    private void buscar(ActionEvent event) {
    }

    @FXML
    private void eliminar(ActionEvent event) {
    }

    @FXML
    private void salir(MouseEvent event) {
        Stage stage = (Stage) this.salir.getScene().getWindow();
        stage.close();
    }

    @FXML
    public void min(MouseEvent event) {
        Stage stage = (Stage) this.minimizar.getScene().getWindow();
        stage.toBack();
    }
}
