package co.portafolio.motors.ing.sis.proyecto.controlador;

import java.net.URL;
import java.util.ResourceBundle;

import co.portafolio.motors.ing.sis.proyecto.modelo.SQLstatement;
//import com.mysql.cj.xdevapi.SqlStatement;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

/**
 * FXML Controller class
 *
 * @author Yonier Asprilla
 */
public class logicaVerConcesionarios implements Initializable {

    @FXML
    private TextField txtBuscar;
    @FXML
    private Button btnModificar;
    @FXML
    private Button btnEliminar;
    @FXML
    private TableView<concesionarioBuilder> tblConcesionarios;
    @FXML
    private TableColumn colId;
    @FXML
    private TableColumn colNombre;
    @FXML
    private TableColumn colDireccion;
    @FXML
    private TableColumn colTelefono;


    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {

        this.colId.setCellValueFactory(new PropertyValueFactory("id"));
        this.colNombre.setCellValueFactory(new PropertyValueFactory("nombre"));
        this.colDireccion.setCellValueFactory(new PropertyValueFactory("direccion"));
        this.colTelefono.setCellValueFactory(new PropertyValueFactory("telefono"));
    }
    SQLstatement mensajero;
    private void mostrar(){

            Listas<concesionarioBuilder> datos = mensajero.buscarConcesionarios();
            try{
                if(datos != null){
                    Object [] filas = new Object[4];
                    for (int i = 0; i<datos.size(); i++){
                        filas[0] = (datos.get(i).getId());
                        filas[1] = (datos.get(i).getNombre());
                        filas[2] = (datos.get(i).getDireccion());
                        filas[3] = (datos.get(i).getTelefono());

                    }
                }
            }catch (NumberFormatException e){

            }



    }
}
