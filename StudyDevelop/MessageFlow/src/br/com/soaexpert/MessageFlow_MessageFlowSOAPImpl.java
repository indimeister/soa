package br.com.soaexpert;

import javax.jws.WebService;
import javax.xml.ws.BindingType;

/**
 * This class was generated by the JAX-WS RI. Oracle JAX-WS 2.1.5 Generated
 * source version: 2.1
 * 
 */
@WebService(portName = "MessageFlowSOAP", serviceName = "MessageFlow", targetNamespace = "http://www.soaexpert.com.br", wsdlLocation = "/wsdls/MessageFlow.wsdl", endpointInterface = "br.com.soaexpert.MessageFlow")
@BindingType("http://schemas.xmlsoap.org/wsdl/soap/http")
public class MessageFlow_MessageFlowSOAPImpl implements MessageFlow {

	public MessageFlow_MessageFlowSOAPImpl() {
	}

	/**
	 * 
	 * @param nomeCliente
	 * @return returns double
	 */
	public double getLimiteCredito(Nome nomeCliente) {
		if (nomeCliente.getPrimeiroNome().equals("Felipe") && nomeCliente.getUltimoNome().equals("Oliveira")) {
			  return 750;
		  } else {
			  return 200;
		  }
	}

	/**
	 * 
	 * @param limite
	 * @return returns br.com.soaexpert.CatalogoProduto
	 */
	public CatalogoProduto getCatalogoProduto(double limite) {
		CatalogoProduto catalogo = new CatalogoProduto();
	    Produto produto = null;
		int pont = 0;
		for (int i = pont; i < 5; i++) {
			int valor = i * 100;
			
			if (limite >= valor) {
		       	produto = new Produto();	
				produto.setIDProduto(i);
				produto.setNomeProduto("Produto " + i);
				produto.setValorProduto(valor);
				catalogo.getProduto().add(produto);
				pont++;
			}
		}
		catalogo.setIDCatalogoProduto(1);
		return catalogo;
	}

	/**
	 * 
	 * @param pedido
	 */
	public void processaPedido(Pedido pedido) {
		// replace with your impl here
		return;
	}

}
