# br_nf

## Features
- Issues brazilian invoice(in progress)
- generates test invoice with random data(Ready! See an example of valid invoice xml at [this file](https://github.com/jlucartc/gem_nf/blob/master/nota_exemplo.xml))

## Future improvements
- Random invoice data still doesn't have any configuration options, like selecting certain groups or filling in part of the xml with your own data. This will be included in the future.

- It would be nice to allow using a hash with default values. That would give more freedom to the users, since their business requirements wouldn't be affected by the default values specified by the gem code, and it would be safer in case of misuse of the api (e.g. forgeting to fill in a field when sending a message).

## How to use?

### Generating random data

To generate random data, just call the method that builds the XML for the desired service.
e.g.: To issue a new invoice, your should call the method `autorizar_nota`:

```ruby
require_relative './lib/brnf.rb'

# If you want a random invoice, that's the method call:
generator = BRNF::XML.new
xml = generator.autorizar_nota()

# If you wanna create an invoice with your data, use this:
generator = BRNF::XML.new
# More info about the message structure soon
xml = generator.autorizar_nota(message: JSON.parse(File.open("my_json_message.json","r").read) )
```

## Message structure

A rough description for each message can be found at [this folder](https://github.com/jlucartc/gem_nf/blob/master/messages/api)). There you'll find an OpenAPI description for each service, but keep in mind that these descriptions are not strict enough. To find more strict documentation, see [this folder](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao)), and look for the files below:


- [./schemas/producao/arquivos/enviNFe_v4.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/enviNFe_v4.00.xsd) for description of `BRNF::XML.new.autorizar_nota()`
- [./schemas/producao/arquivos/inutNFe_v4.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/inutNFe_v4.00.xsd) for description of `BRNF::XML.new.inutilizar_numeracao()`
- [./schemas/producao/arquivos/envCCe_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envCCe_v1.00.xsd) for description of `BRNF::XML.new.criar_carta_correcao()`
- [./schemas/producao/arquivos/envEventoCancNFe_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envEventoCancNFe_v1.00.xsd) for description of `BRNF::XML.new.cancelar_nota()`
- [./schemas/producao/arquivos/consStatServ_v4.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/consStatServ_v4.00.xsd) for description of `BRNF::XML.new.consultar_status_servico()`
- [./schemas/producao/arquivos/envEventoCancSubst_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envEventoCancSubst_v1.00.xsd) for description of `BRNF::XML.new.cancelar_nota_substituicao()`
- [./schemas/producao/arquivos/envRemIndus_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envRemIndus_v1.00.xsd) for description of `BRNF::XML.new.prorrogar_prazo_1()`
- [./schemas/producao/arquivos/envRemIndus_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envRemIndus_v1.00.xsd) for description of `BRNF::XML.new.prorrogar_prazo_2()`
- [./schemas/producao/arquivos/envEventoAtorInteressado_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envEventoAtorInteressado_v1.00.xsd) for description of `BRNF::XML.new.ator_interessado()`
- [./schemas/producao/arquivos/envConfRecebto_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envConfRecebto_v1.00.xsd) for description of `BRNF::XML.new.confirmacao_da_operacao()`
- [./schemas/producao/arquivos/envConfRecebto_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envConfRecebto_v1.00.xsd) for description of `BRNF::XML.new.ciencia_da_operacao()`
- [./schemas/producao/arquivos/envConfRecebto_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envConfRecebto_v1.00.xsd) for description of `BRNF::XML.new.desconhecimento_da_operacao()`
- [./schemas/producao/arquivos/envConfRecebto_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envConfRecebto_v1.00.xsd) for description of `BRNF::XML.new.operacao_nao_realizada()`
- [./schemas/producao/arquivos/envEPEC_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envEPEC_v1.00.xsd) for description of `BRNF::XML.new.emissao_contingencia()`
- [./schemas/producao/arquivos/envRemIndus_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envRemIndus_v1.00.xsd) for description of `BRNF::XML.new.cancelamento_prazo_1()`
- [./schemas/producao/arquivos/envRemIndus_v1.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/envRemIndus_v1.00.xsd) for description of `BRNF::XML.new.cancelamento_prazo_2()`
- [./schemas/producao/arquivos/consReciNFe_v4.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/consReciNFe_v4.00.xsd) for description of `BRNF::XML.new.consultar_retorno_autorizacao()`
- [./schemas/producao/arquivos/consSitNFe_v4.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/consSitNFe_v4.00.xsd) for description of `BRNF::XML.new.consultar_protocolo()`
- [./schemas/producao/arquivos/distDFeInt_v1.01.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/distDFeInt_v1.01.xsd) for description of `BRNF::XML.new.nfe_distribuicao_dfe()`
- [./schemas/producao/arquivos/consCad_v2.00.xsd](https://github.com/jlucartc/gem_nf/blob/master/schemas/producao/arquivos/consCad_v2.00.xsd) for description of `BRNF::XML.new.consultar_cadastro()`

The list above was the reference used to create the XML's, and they should provide a better comprehension of the OpenAPI messages when needed. It should be noted that the messages' purpose is only to convey the information needed to fill the xml tags, but they won't be validated at all. The only thing being validated here is the XML(and only at the the test cases or if you explicitly do so by comparing the xml against it's schema).