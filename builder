<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Team Builder - Humble</title>
  <link rel="icon" type="image/png" href="img/mike_anotando2.png">
  
  <style>
    /* --- REPETE O CSS PADRÃO (Mesmo da página anterior) --- */
    :root { --cor-dourado: #d1a720; --cor-fundo: #1a1a1a; --cor-texto: #f5f5f5; }
    body { font-family: "Segoe UI", Arial, sans-serif; background: linear-gradient(135deg, rgba(20,20,20,0.9), rgba(40,30,20,0.9)), url("https://i.imgur.com/vATNRmF.png"); background-size: cover; margin: 0; padding-top: 80px; color: var(--cor-texto); }
    header { position: fixed; top: 0; left: 0; right: 0; width: 100%; padding: 15px 20px; display: flex; justify-content: space-between; align-items: center; background: rgba(20, 20, 20, 0.9); border-bottom: 2px solid var(--cor-dourado); box-shadow: 0 2px 8px rgba(0,0,0,0.6); z-index: 1000; box-sizing: border-box; }
    header h1 { font-size: 1.6rem; color: var(--cor-dourado); display: flex; gap: 10px; margin: 0; }
    header h1 img { height: 40px; }
    header a { text-decoration: none; }
    .menu-toggle { display: flex; flex-direction: column; width: 30px; gap: 5px; cursor: pointer; }
    .menu-toggle span { height: 4px; background: #fff; border-radius: 4px; }
    
    /* --- CSS DO BUILDER --- */
    .builder-container {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      padding: 20px;
      max-width: 1200px;
      margin: 0 auto;
    }

    .import-section {
      width: 100%;
      background: rgba(0,0,0,0.5);
      padding: 15px;
      border-radius: 8px;
      border: 1px dashed var(--cor-dourado);
    }

    .import-area {
      width: 100%;
      height: 100px;
      background: #222;
      color: #fff;
      border: 1px solid #444;
      padding: 10px;
      font-family: monospace;
      resize: vertical;
    }

    .team-display {
      display: flex;
      flex-wrap: wrap;
      gap: 15px;
      width: 100%;
      justify-content: center;
    }

    /* O Cartão Detalhado do Pokémon */
    .poke-slot {
      background: rgba(40, 40, 40, 0.95);
      border: 1px solid #555;
      width: 300px;
      border-radius: 8px;
      overflow: hidden;
      display: flex;
      flex-direction: column;
    }

    .poke-header {
      background: #333;
      padding: 10px;
      display: flex;
      align-items: center;
      gap: 10px;
      border-bottom: 2px solid var(--cor-dourado);
    }
    
    .poke-sprite {
      width: 60px;
      height: 60px;
      object-fit: contain; /* Garante que o gif não estique */
    }

    .poke-info h3 { margin: 0; font-size: 1.1rem; color: var(--cor-dourado); }
    .poke-item { font-size: 0.8rem; color: #bbb; display: flex; align-items: center; gap: 5px; }
    .small-icon { width: 20px; height: 20px; }

    .poke-stats {
      padding: 10px;
      font-size: 0.85rem;
      background: rgba(0,0,0,0.2);
    }

    .moves-list {
      padding: 10px;
      display: flex;
      flex-direction: column;
      gap: 5px;
    }

    .move {
      background: #2a2a2a;
      padding: 5px 10px;
      border-radius: 4px;
      font-size: 0.9rem;
      border-left: 3px solid #888;
    }
    /* Cores de exemplo para tipos */
    .type-water { border-color: #6890F0; }
    .type-grass { border-color: #78C850; }
    .type-fire { border-color: #F08030; }

    .btn-action {
      background: var(--cor-dourado);
      border: none;
      padding: 10px 20px;
      font-weight: bold;
      cursor: pointer;
      margin-top: 10px;
    }
  </style>
</head>
<body>

  <header>
    <h1><img src="https://i.imgur.com/XOEcuO8.png"> Humble Builder</h1>
    <div class="menu-toggle"><span></span><span></span><span></span></div>
  </header>

  <div class="builder-container">
    
    <div class="import-section">
      <h3>Importar do Showdown</h3>
      <p style="font-size: 0.9rem; color:#aaa;">Cole o texto do "Import/Export" aqui:</p>
      <textarea class="import-area" placeholder="Pelipper @ Damp Rock..."></textarea>
      <button class="btn-action">Carregar Time</button>
    </div>

    <div class="team-display">
      
      <div class="poke-slot">
        <div class="poke-header">
          <img class="poke-sprite" src="https://play.pokemonshowdown.com/sprites/xyani/pelipper.gif">
          <div class="poke-info">
            <h3>Pelipper (M)</h3>
            <div class="poke-item">
              <img src="https://www.serebii.net/itemdex/sprites/damprock.png" class="small-icon"> Damp Rock
            </div>
          </div>
        </div>
        <div class="poke-stats">
          Ability: <strong>Drizzle</strong><br>
          EVs: 248 HP / 252 Def / 8 SpD
        </div>
        <div class="moves-list">
          <div class="move type-water">Scald</div>
          <div class="move type-flying">Roost</div>
          <div class="move type-grass">U-turn</div>
          <div class="move type-flying">Hurricane</div>
        </div>
      </div>

      <div class="poke-slot">
        <div class="poke-header">
          <img class="poke-sprite" src="https://play.pokemonshowdown.com/sprites/xyani/swampert-mega.gif">
          <div class="poke-info">
            <h3>Swampert-Mega</h3>
            <div class="poke-item">Swampertite</div>
          </div>
        </div>
        <div class="poke-stats">
          Ability: <strong>Swift Swim</strong><br>
          EVs: 252 Atk / 4 SpD / 252 Spe
        </div>
        <div class="moves-list">
          <div class="move type-water">Waterfall</div>
          <div class="move type-ground">Earthquake</div>
          <div class="move type-ice">Ice Punch</div>
          <div class="move type-water">Flip Turn</div>
        </div>
      </div>

      </div>
  </div>

</body>
</html>
