import { Request, Response } from "express";


export const getUsers = (req:Request,res:Response)=>{
    res.json({
        msg:"GetUsuario"
    })
}

export const getUser = (req:Request,res:Response)=>{

    const { id } = req.params;
    res.json({
        msg:"GetUsuario",
        id
    })
}

export const postUser = (req:Request,res:Response)=>{

    const { body } = req;
    res.json({
        msg:"PostUsuario",
        body
    })
}

export const putUser = (req:Request,res:Response)=>{

    const { id } = req.params;
    const { body } = req;
    res.json({
        msg:"PutUsuario",
        body
    })
}

export const deleteUser = (req:Request,res:Response)=>{

    const { id } = req.params;
    res.json({
        msg:"DeleteUsuario",
        id
    })
}
