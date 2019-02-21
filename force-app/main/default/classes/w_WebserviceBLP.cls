global class w_WebserviceBLP {

    webservice static closeClaimsResponse closeClaimsList(closeClaimsInput l_input){
        closeClaimsResponse myVar = new closeClaimsResponse();
        myVar.success = true;
        myVar.errorMsg = 'Sem erros';
        return myVar;
    }
     global class closeClaimsInput{
        webservice String sfId;
        webservice Boolean closed;
    }
    
    global class closeClaimsResponse{
        webservice Boolean success;
        webservice String errorMsg;
    }
}