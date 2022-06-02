import express,{Application} from 'express';
import cors from "cors";
import userRouter from "../routes/user";
class Server{
    private app:Application;
    private port:string ;
    private paths = {
        users: "/users"
    }

    constructor(){
        this.app = express();
        this.port = process.env.PORT || "1200";
        this.middlewares();
        this.routes();
    }
    middlewares(){
        //CORS
        this.app.use(cors());
        //LECTURA DE BODY
        this.app.use(express.json());
        //CARPETA PUBLICA
        this.app.use( express.static("public"));
    }

    routes(){
        this.app.use(this.paths.users, userRouter)
    }

    listen(){
        this.app.listen( this.port, ()=>{
            console.log("Servidor corriendo en el puerto: "+ this.port + "!!");
        });
    }
}

export default Server;