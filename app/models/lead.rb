class Lead < ActiveRecord::Base

  PHONE_EX = /\((\d{2})\)\s(\d{4,5}\-\d{3,4})/
  EMAIL_EX = /\A(?:(?:[\w`~!#$%^&*\-=+;:{}'|,?\/]+(?:(?:\.(?:"(?:\\?[\w`~!#$%^&*\-=+;:{}'|,?\/\.()<>\[\] @]|\\"|\\\\)*"|[\w`~!#$%^&*\-=+;:{}'|,?\/]+))*\.[\w`~!#$%^&*\-=+;:{}'|,?\/]+)?)|(?:"(?:\\?[\w`~!#$%^&*\-=+;:{}'|,?\/\.()<>\[\] @]|\\"|\\\\)+"))@(?:[a-zA-Z\d\-]+(?:\.[a-zA-Z\d\-]+)*|\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])\z/

  TEAM_SIZES = [ "1 pessoa",
                 "2 pessoas",
                 "Até 5 pessoas",
                 "Até 10 pessoas",
                 "Mais que 10 pessoas"
  ]

  TOOLS = [ 'Panilha Excel',
            'Agendor',
            'Pipedrive',
            'Salesforce',
            'Não uso nenhuma ferramenta',
            'Outro'
  ]

  SECTORS = [ 'Agência de Comunicação / Digital',
              'Agência de Turismo / Viagens',
              'Agricultura / Agronegócio',
              'Automação comercial / residencial / industrial',
              'Consultoria de TI / RH / Marketing e outros',
              'Contabilidade',
              'Educação',
              'Prestador de serviços',
              'Software',
              'Tecnologia',
              'Outros'
  ]

  belongs_to :position

  validates :name, :email, :mobile_phone, :position, :tool, :team_size,
    presence: true
  validates :team_size, inclusion: { in: TEAM_SIZES }
  validate :email_format
  validate :phone_format

  protected

  def email_format
    unless EMAIL_EX.match(self.email)
      errors.add(:email, "Invalid email format.")
    end
  end

  def phone_format
    unless PHONE_EX.match(self.mobile_phone)
      errors.add(:mobile_phone, "Invalid phone format.")
    end
  end
end
