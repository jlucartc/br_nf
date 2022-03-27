require_relative 'parser'
require_relative 'generator'
require_relative 'issuer'

module BRNF

	class XML

		def initialize
			@generator = BRNF::Generator.new
			@parser = BRNF::Parser.new
		end

		def autorizar_nota(message: nil)
			generate_xml(message,__method__)
		end

		def consultar_status_servico(message: nil)
			generate_xml(message,__method__)
		end

		def consultar_retorno_autorizacao(message: nil)
			generate_xml(message,__method__)
		end

		def inutilizar_numeracao(message: nil)
			generate_xml(message,__method__)
		end

		def nfe_distribuicao_dfe(message: nil)
			generate_xml(message,__method__)
		end

		def consultar_protocolo(message: nil)
			generate_xml(message,__method__)
		end

		def criar_carta_correcao(message: nil)
			generate_xml(message,__method__)
		end

		def confirmacao_da_operacao(message: nil)
			generate_xml(message,__method__)
		end

		def ciencia_da_operacao(message: nil)
			generate_xml(message,__method__)
		end

		def desconhecimento_da_operacao(message: nil)
			generate_xml(message,__method__)
		end

		def operacao_nao_realizada(message: nil)
			generate_xml(message,__method__)
		end

		def emissao_contingencia(message: nil)
			generate_xml(message,__method__)
		end

		def cancelar_nota_substituicao(message: nil)
			generate_xml(message,__method__)
		end

		def cancelar_nota(message: nil)
			generate_xml(message,__method__)
		end

		def prorrogar_prazo_1(message: nil)
			generate_xml(message,__method__)
		end

		def prorrogar_prazo_2(message: nil)
			generate_xml(message,__method__)
		end

		def ator_interessado(message: nil)
			generate_xml(message,__method__)
		end

		def cancelamento_prazo_1(message: nil)
			generate_xml(message,__method__)
		end
		
		def cancelamento_prazo_2(message: nil)
			generate_xml(message,__method__)
		end

		def consultar_cadastro(message: nil)
			generate_xml(message,__method__)
		end

		private

		def generate_xml(message,metodo)
			if !message.nil?
				xml = @parser.public_send(metodo,message)
			elsif message.nil?
				xml = @generator.public_send(metodo)
			end
		end
	end
end