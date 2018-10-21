defmodule MediumGraphqlApiWeb.Schema.Types.Usertype do
  use Absinthe.Schema.Notation

  # GraphQL will use obj this as a reference for how to display a user
  object :user_type do
    field(:id, :id)
    field(:first_name, :string)
    field(:last_name, :string)
    field(:email, :string)
    field(:role, :string)
  end

  # GraphQL will use this obj as a reference to input data
  input_object :user_input_type do
    field(:first_name, non_null(:string))
    field(:last_name, non_null(:string))
    field(:email, non_null(:string))
    field(:password, non_null(:string))
    field(:password_confirmation, non_null(:string))
  end
end
