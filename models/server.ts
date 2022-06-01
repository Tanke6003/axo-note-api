import express,{Application} from 'express';
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
        this.routes();
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