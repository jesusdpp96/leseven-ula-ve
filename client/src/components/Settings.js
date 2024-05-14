import { useSearchParams } from "react-router-dom";
import { Typography } from "@mui/material";
import GradosList from "./GradosList";
import SettingsForm from "./SettingsForm";

export default function Settings() {
  let view = "grados";
  const [query, setQuery] = useSearchParams();
  const gradoQuery = query.get("grado");

  if (typeof gradoQuery === "string") {
    view = "form";
  }

  return view === "form" ? (
    <SettingsForm grado={gradoQuery} />
  ) : (
    <div>
      <Typography variant="h4" mb={5}>
        Configuración de Pruebas
      </Typography>
      <GradosList />
    </div>
  );
}
