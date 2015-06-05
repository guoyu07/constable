defmodule Constable.Mailers.Base do
  def default_attributes(announcement: announcement, author: author) do
    %{
      from_email: "constable-#{announcement.id}@#{email_domain}",
      from_name: "#{author.name} (Constable)"
    }
  end

  defp email_domain do
    System.get_env("EMAIL_DOMAIN")
  end
end