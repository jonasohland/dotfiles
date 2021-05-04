function uuid_includeguards
uuidgen | tr '[:lower:]' '[:upper:]' | tr -d '-' | xargs -i echo -e "#ifndef H_{}\n#define H_{}\n\n\n#endif //H_{}"
end
