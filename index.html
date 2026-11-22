<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>CNC CAM — Milling G-Code Generator</title>
<style>
:root{
  --bg:#0d1117; --panel:#151b23; --panel2:#1b232d; --panel3:#222c38;
  --line:#2b3644; --fg:#c8d4e2; --dim:#7c8b9d; --acc:#22a8ff; --acc2:#00dd8a;
  --warn:#ffb020; --err:#ff4d5e; --ok:#25d366;
}
*{box-sizing:border-box}
html,body{height:100%}
body{margin:0;background:var(--bg);color:var(--fg);
  font:13px/1.45 "Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif;overflow:hidden}
button,input,select,textarea{font-family:inherit;font-size:12px;color:var(--fg)}
h1,h2,h3,h4{margin:0;font-weight:600}
#app{display:flex;flex-direction:column;height:100vh}
header{display:flex;align-items:center;gap:16px;padding:8px 14px;background:linear-gradient(180deg,#1a2430,#121820);
  border-bottom:1px solid var(--line);flex:0 0 auto}
header .logo{font-weight:700;letter-spacing:.5px;color:#fff}
header .logo b{color:var(--acc)}
header .meta{color:var(--dim);font-size:11px;margin-left:auto;display:flex;gap:14px}
header .meta span b{color:var(--fg);font-weight:600}
nav#tabs{display:flex;gap:2px;background:#111820;border-bottom:1px solid var(--line);padding:0 8px;overflow-x:auto;flex:0 0 auto}
nav#tabs button{background:transparent;border:0;border-bottom:2px solid transparent;padding:9px 14px;
  color:var(--dim);cursor:pointer;white-space:nowrap;font-size:12px;font-weight:600;letter-spacing:.3px}
nav#tabs button:hover{color:var(--fg);background:#182231}
nav#tabs button.active{color:var(--acc);border-bottom-color:var(--acc);background:#141d28}
main{flex:1 1 auto;overflow:hidden;position:relative}
.view{position:absolute;inset:0;display:none;overflow:auto;padding:14px}
.view.active{display:block}
.view.split{display:none;grid-template-columns:360px 1fr;gap:12px;padding:12px}
.view.split.active{display:grid}
footer{flex:0 0 auto;display:flex;gap:16px;align-items:center;padding:5px 14px;background:#0f151d;
  border-top:1px solid var(--line);font-size:11px;color:var(--dim)}
footer .st{display:flex;gap:6px;align-items:center}
.dot{width:8px;height:8px;border-radius:50%;background:var(--dim);display:inline-block}
.dot.ok{background:var(--ok)} .dot.warn{background:var(--warn)} .dot.err{background:var(--err)}
.panel{background:var(--panel);border:1px solid var(--line);border-radius:8px;padding:12px;margin-bottom:12px}
.panel h3{font-size:12px;text-transform:uppercase;letter-spacing:.8px;color:var(--acc);
  margin-bottom:10px;border-bottom:1px solid var(--line);padding-bottom:6px}
.grid2{display:grid;grid-template-columns:1fr 1fr;gap:8px}
.grid3{display:grid;grid-template-columns:1fr 1fr 1fr;gap:8px}
label.f{display:flex;flex-direction:column;gap:3px;font-size:11px;color:var(--dim)}
label.f input,label.f select{background:#0b1017;border:1px solid var(--line);border-radius:5px;
  padding:5px 7px;color:var(--fg);width:100%}
label.f input:focus,label.f select:focus{outline:1px solid var(--acc);border-color:var(--acc)}
label.f input[type=checkbox]{width:auto}
button.btn{background:#1e2b3a;border:1px solid var(--line);color:var(--fg);border-radius:6px;
  padding:7px 12px;cursor:pointer;font-weight:600;font-size:12px}
button.btn:hover{background:#26364a;border-color:#3b4d64}
button.btn.primary{background:linear-gradient(180deg,#1a86d8,#1370b5);border-color:#1a86d8;color:#fff}
button.btn.primary:hover{background:linear-gradient(180deg,#2a9ae8,#1780c5)}
button.btn.danger{background:#3a1c22;border-color:#5a2733;color:#ff8b98}
button.btn.sm{padding:4px 8px;font-size:11px}
table{width:100%;border-collapse:collapse;font-size:11.5px}
th,td{text-align:left;padding:5px 7px;border-bottom:1px solid var(--line)}
th{color:var(--dim);font-weight:600;text-transform:uppercase;font-size:10px;letter-spacing:.6px}
tr:hover td{background:#1a232e}
.kv{display:grid;grid-template-columns:1fr auto;gap:2px 10px;font-size:12px}
.kv .k{color:var(--dim)} .kv .v{color:#fff;font-variant-numeric:tabular-nums;text-align:right}
.badge{display:inline-block;padding:1px 7px;border-radius:10px;font-size:10px;font-weight:700;
  letter-spacing:.5px;text-transform:uppercase}
.badge.g{background:#12301f;color:var(--ok)} .badge.y{background:#332a10;color:var(--warn)}
.badge.r{background:#331318;color:var(--err)} .badge.b{background:#10283d;color:var(--acc)}
.hint{color:var(--dim);font-size:11px;line-height:1.5}
.warnbox{background:#2b2310;border:1px solid #4a3a12;color:#ffcf6b;padding:8px 10px;
  border-radius:6px;font-size:11.5px;margin-bottom:10px}
.errbox{background:#2b1216;border:1px solid #4d1a22;color:#ff97a2;padding:8px 10px;
  border-radius:6px;font-size:11.5px;margin-bottom:10px}
/* 3D + canvas */
#glwrap{position:relative;background:#070a0e;border:1px solid var(--line);border-radius:8px;overflow:hidden}
#gl{display:block;width:100%;height:100%}
.viewport{display:grid;grid-template-rows:1fr 220px;gap:10px;height:100%}
#canvas2d{width:100%;height:100%;display:block;background:#070a0e;border:1px solid var(--line);border-radius:8px}
.overlay{position:absolute;top:8px;left:8px;display:flex;gap:6px;flex-wrap:wrap}
.overlay button{background:rgba(20,28,38,.85);border:1px solid var(--line);color:var(--fg);
  border-radius:5px;padding:4px 8px;font-size:11px;cursor:pointer}
.overlay button:hover{background:#243244}
/* editor */
.editor-wrap{position:relative;height:100%;min-height:420px;border:1px solid var(--line);
  border-radius:8px;overflow:hidden;background:#0a0f15}
#gcode-hl,#gcode-ta{margin:0;position:absolute;inset:0;padding:10px 12px;font:12px/1.55 "Consolas",
  "SF Mono",Menlo,monospace;white-space:pre;overflow:auto;tab-size:4}
#gcode-hl{color:#9fb3c8;pointer-events:none}
#gcode-ta{background:transparent;color:transparent;caret-color:#fff;border:0;resize:none;outline:none}
#gcode-ta::selection{background:rgba(34,168,255,.35)}
.g{color:#ff9d4d;font-weight:600}.m{color:#ff6bd6;font-weight:600}
.ax{color:#68d8ff}.fs{color:#ffe066}.c{color:#5f7183;font-style:italic}
.issue{display:flex;gap:8px;padding:5px 8px;border-left:3px solid var(--dim);
  background:#121a23;margin-bottom:4px;border-radius:0 5px 5px 0;font-size:11.5px}
.issue.e{border-left-color:var(--err)} .issue.w{border-left-color:var(--warn)}
.issue.i{border-left-color:var(--acc)}
.issue .ln{color:var(--dim);font-variant-numeric:tabular-nums;min-width:48px}
.row{display:flex;gap:8px;align-items:center;flex-wrap:wrap}
.spacer{flex:1}
.scroll{max-height:340px;overflow:auto}
.opcard{background:var(--panel2);border:1px solid var(--line);border-radius:7px;padding:8px 10px;
  margin-bottom:6px;display:flex;gap:10px;align-items:center}
.opcard .nm{font-weight:600}
.opcard .sub{color:var(--dim);font-size:11px}
.chip{background:#10283d;color:var(--acc);border-radius:4px;padding:1px 6px;font-size:10px;font-weight:700}
</style>
</head>
<body>
<div id="app">
  <header>
    <div class="logo">CNC <b>CAM</b> Generator</div>
    <div class="meta">
      <span>Machine: <b id="hdr-machine">—</b></span>
      <span>Post: <b id="hdr-post">—</b></span>
      <span>Ops: <b id="hdr-ops">0</b></span>
      <span>Moves: <b id="hdr-moves">0</b></span>
      <span>Lines: <b id="hdr-lines">0</b></span>
    </div>
  </header>
  <nav id="tabs"></nav>
  <main>
    <div class="view" id="v-dashboard"></div>
    <div class="view" id="v-machine"></div>
    <div class="view" id="v-workpiece"></div>
    <div class="view" id="v-tools"></div>
    <div class="view" id="v-operations"></div>
    <div class="view" id="v-gear"></div>
    <div class="view split" id="v-sim">
      <div id="sim-side"></div>
      <div class="viewport">
        <div id="glwrap">
          <canvas id="gl"></canvas>
          <div class="overlay">
            <button data-cam="iso">ISO</button>
            <button data-cam="top">TOP</button>
            <button data-cam="front">FRONT</button>
            <button data-cam="side">SIDE</button>
            <button id="btn-fit">FIT</button>
          </div>
        </div>
        <canvas id="canvas2d"></canvas>
      </div>
    </div>
    <div class="view split" id="v-gcode">
      <div id="gcode-side"></div>
      <div class="editor-wrap">
        <pre id="gcode-hl"></pre>
        <textarea id="gcode-ta" spellcheck="false"></textarea>
      </div>
    </div>
    <div class="view" id="v-post"></div>
    <div class="view" id="v-export"></div>
  </main>
  <footer>
    <div class="st"><span class="dot" id="st-dot"></span><span id="st-text">Ready</span></div>
    <div class="st">Validation: <b id="st-val" style="color:var(--fg)">—</b></div>
    <div class="spacer"></div>
    <div class="st">Toolpath length: <b id="st-len">0</b> m</div>
    <div class="st">Est. cycle time: <b id="st-time">0</b> min</div>
  </footer>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
<script>
/* ============================================================================
   CNC CAM GENERATOR — core engine
   Modules: Util / DB / State / Geo / Ops / Gear / Post / Validate / Viz / UI
   ========================================================================== */
'use strict';

/* ---------------------------------------------------------------- 1. UTIL */
const U = {
  r:(v,n=4)=>{const p=Math.pow(10,n);return Math.round(v*p)/p;},
  f:(v,n=3)=>Number(v||0).toFixed(n),
  d2r:d=>d*Math.PI/180,
  r2d:r=>r*180/Math.PI,
  clamp:(v,a,b)=>Math.max(a,Math.min(b,v)),
  lerp:(a,b,t)=>a+(b-a)*t,
  esc:s=>String(s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;'),
  uid:(()=>{let i=0;return()=>'x'+(++i)+Math.random().toString(36).slice(2,5);})(),
  sum:(a)=>a.reduce((s,v)=>s+v,0)
};

/* ------------------------------------------------------------- 2. DATABASE */
const CONTROLLERS = {
  fanuc:{label:'FANUC (0i-MF)', style:'fanuc', canned:true, comp:true, rigidTap:true,
         atc:true, g43:true, g28:true, metric:'G21', inch:'G20'},
  haas:{label:'Haas', style:'fanuc', canned:true, comp:true, rigidTap:true,
        atc:true, g43:true, g28:true, metric:'G21', inch:'G20'},
  mach3:{label:'Mach3', style:'fanuc', canned:true, comp:true, rigidTap:false,
         atc:true, g43:true, g28:false, metric:'G21', inch:'G20'},
  grbl:{label:'GRBL 1.1', style:'grbl', canned:false, comp:false, rigidTap:false,
        atc:false, g43:false, g28:false, metric:'G21', inch:'G20'},
  siemens:{label:'Siemens SINUMERIK 840D', style:'siemens', canned:true, comp:true,
           rigidTap:true, atc:true, g43:true, g28:true, metric:'G71', inch:'G70'},
  syntec:{label:'Syntec', style:'fanuc', canned:true, comp:true, rigidTap:true,
          atc:true, g43:true, g28:true, metric:'G21', inch:'G20'}
};

/* Vc in m/min, fz in mm/tooth. Values are conservative shop-floor starting points. */
const MATERIALS = {
  'Mild Steel':     {vc:{HSS:26, Carbide:110}, fz:{HSS:.045, Carbide:.065}, drill:26, kc:1500},
  'Stainless Steel':{vc:{HSS:14, Carbide:70},  fz:{HSS:.032, Carbide:.045}, drill:14, kc:2100},
  'Aluminium':      {vc:{HSS:120,Carbide:400}, fz:{HSS:.080, Carbide:.120}, drill:70, kc:700},
  'Cast Iron':      {vc:{HSS:24, Carbide:100}, fz:{HSS:.050, Carbide:.070}, drill:24, kc:1200},
  'Brass':          {vc:{HSS:80, Carbide:250}, fz:{HSS:.070, Carbide:.100}, drill:60, kc:900},
  'Copper':         {vc:{HSS:60, Carbide:180}, fz:{HSS:.060, Carbide:.090}, drill:50, kc:1100},
  'Tool Steel':     {vc:{HSS:12, Carbide:60},  fz:{HSS:.025, Carbide:.040}, drill:12, kc:2400}
};

const TOOL_TYPES = {
  flat:{label:'Flat End Mill', kind:'mill'},
  ball:{label:'Ball Nose End Mill', kind:'mill'},
  bull:{label:'Bull Nose End Mill', kind:'mill'},
  face:{label:'Face Mill', kind:'mill'},
  chamfer:{label:'Chamfer Mill', kind:'mill'},
  drill:{label:'Drill Bit', kind:'drill'},
  tap:{label:'Tap', kind:'tap'},
  ream:{label:'Reamer', kind:'drill'},
  bore:{label:'Boring Bar', kind:'drill'},
  slot:{label:'Slot Cutter', kind:'mill'},
  tslot:{label:'T-Slot Cutter', kind:'mill'},
  dovetail:{label:'Dovetail Cutter', kind:'mill'},
  threadmill:{label:'Thread Mill', kind:'mill'}
};

/* ---------------------------------------------------------------- 3. STATE */
const state = {
  programName:'PART-001',
  programNumber:1001,
  machine:{
    name:'Generic VMC', type:'3axis',
    travelX:800, travelY:400, travelZ:500,
    maxSpindle:12000, maxFeed:10000, rapidFeed:15000,
    atc:true, wcs:'G54', units:'mm', positioning:'absolute',
    controller:'fanuc', safeZ:50, coolant:true,
    rotary:{
      a:{enabled:false, min:-99999, max:99999, ratio:40, mode:'indexed', dir:1},
      b:{enabled:false, min:-110,   max:110,   ratio:1,  mode:'indexed', dir:1},
      c:{enabled:false, min:-99999, max:99999, ratio:1,  mode:'indexed', dir:1}
    },
    pivot:{x:0,y:0,z:0}
  },
  workpiece:{
    type:'rect', w:100, d:60, h:20, dia:50, len:100,
    origin:'top-center', material:'Aluminium', clamping:'vise'
  },
  tools:[],
  ops:[],
  toolpaths:[],
  gcode:'',
  lineMap:[],
  issues:[],
  gear:null
};

function defaultTools(){
  return [
    {id:U.uid(), num:1, name:'Face Mill Ø63', type:'face', dia:63, r:0.8, flutes:5,
     fluteLen:10, oal:80, mat:'Carbide', coat:'TiAlN', holder:32, vc:250, fz:0.10, maxRpm:8000},
    {id:U.uid(), num:2, name:'Flat End Mill Ø10', type:'flat', dia:10, r:0, flutes:3,
     fluteLen:25, oal:70, mat:'Carbide', coat:'TiAlN', holder:10, vc:180, fz:0.045, maxRpm:12000},
    {id:U.uid(), num:3, name:'Ball Nose Ø6', type:'ball', dia:6, r:3, flutes:2,
     fluteLen:20, oal:60, mat:'Carbide', coat:'AlCrN', holder:6, vc:150, fz:0.035, maxRpm:18000},
    {id:U.uid(), num:4, name:'Drill Ø8', type:'drill', dia:8, r:0, flutes:2,
     fluteLen:40, oal:100, mat:'HSS-Co', coat:'TiN', holder:8, vc:25, fz:0.10, maxRpm:4000},
    {id:U.uid(), num:5, name:'Chamfer Mill Ø10 90°', type:'chamfer', dia:10, r:0, flutes:4,
     fluteLen:12, oal:60, mat:'Carbide', coat:'TiAlN', holder:10, vc:150, fz:0.04, maxRpm:15000}
  ];
}
state.tools = defaultTools();

/* ------------------------------------------------------------ 4. GEOMETRY */
const Geo = {
  area(pts){
    let a=0;
    for(let i=0,n=pts.length;i<n;i++){
      const p=pts[i], q=pts[(i+1)%n];
      a += p.x*q.y - q.x*p.y;
    }
    return a/2;
  },
  rect(cx,cy,w,h){
    return [{x:cx-w/2,y:cy-h/2},{x:cx+w/2,y:cy-h/2},
            {x:cx+w/2,y:cy+h/2},{x:cx-w/2,y:cy+h/2}];
  },
  circle(cx,cy,r,n=72){
    const p=[];
    for(let i=0;i<n;i++){const a=2*Math.PI*i/n;p.push({x:cx+r*Math.cos(a),y:cy+r*Math.sin(a)});}
    return p;
  },
  /* Vertex-bisector polygon offset. Positive = outward for CCW polygons. */
  offset(pts,dist,minCos=0.15){
    const n=pts.length, out=[];
    const sgn = Geo.area(pts)>0 ? 1 : -1;
    for(let i=0;i<n;i++){
      const p0=pts[(i-1+n)%n], p1=pts[i], p2=pts[(i+1)%n];
      const v1={x:p1.x-p0.x,y:p1.y-p0.y}, v2={x:p2.x-p1.x,y:p2.y-p1.y};
      const l1=Math.hypot(v1.x,v1.y)||1e-9, l2=Math.hypot(v2.x,v2.y)||1e-9;
      const n1={x: sgn*v1.y/l1, y:-sgn*v1.x/l1};
      const n2={x: sgn*v2.y/l2, y:-sgn*v2.x/l2};
      let bis={x:n1.x+n2.x, y:n1.y+n2.y};
      const bl=Math.hypot(bis.x,bis.y);
      if(bl<1e-7){ out.push({x:p1.x+n1.x*dist,y:p1.y+n1.y*dist}); continue; }
      bis.x/=bl; bis.y/=bl;
      const cosH=Math.max(bis.x*n1.x+bis.y*n1.y, minCos);
      const sc=dist/cosH;
      out.push({x:p1.x+bis.x*sc, y:p1.y+bis.y*sc});
    }
    return out;
  },
  bbox(pts){
    let x0=1e30,y0=1e30,x1=-1e30,y1=-1e30;
    pts.forEach(p=>{x0=Math.min(x0,p.x);y0=Math.min(y0,p.y);x1=Math.max(x1,p.x);y1=Math.max(y1,p.y);});
    return {x0,y0,x1,y1,w:x1-x0,h:y1-y0};
  },
  dist(a,b){return Math.hypot(b.x-a.x,b.y-a.y);},
  /* rotate polygon by angle (rad) about origin */
  rot(pts,a){
    const c=Math.cos(a),s=Math.sin(a);
    return pts.map(p=>({x:p.x*c-p.y*s, y:p.x*s+p.y*c}));
  }
};

/* ------------------------------------------------------ 5. TOOLPATH PRIMS */
const TP = {
  rapid:(x,y,z,ex)=>Object.assign({t:'G0',x,y,z},ex||{}),
  feed:(x,y,z,ex)=>Object.assign({t:'G1',x,y,z},ex||{}),
  cw:(x,y,z,i,j,ex)=>Object.assign({t:'G2',x,y,z,i,j},ex||{}),
  ccw:(x,y,z,i,j,ex)=>Object.assign({t:'G3',x,y,z,i,j},ex||{}),
  cycle:(code,holes,params)=>Object.assign({t:'cycle',code,holes},params)
};

function depthPasses(z0,z1,doc){
  const total=z0-z1;
  const n=Math.max(1,Math.ceil(Math.abs(total)/Math.max(doc,1e-6)));
  const out=[];
  for(let i=1;i<=n;i++) out.push(z0-total*i/n);
  return out;
}

function stockBounds(w){
  if(w.type==='cyl'){
    const r=w.dia/2, L=w.len;
    return {x0:-L/2,x1:L/2,y0:-r,y1:r,zTop:0,zBot:-w.dia,cyl:true,r};
  }
  if(w.origin==='top-left') return {x0:0,x1:w.w,y0:0,y1:w.d,zTop:0,zBot:-w.h};
  return {x0:-w.w/2,x1:w.w/2,y0:-w.d/2,y1:w.d/2,zTop:0,zBot:-w.h};
}

/* Cutting data calculation (real formulas) */
function calcCut(tool, materialName, machine){
  const M = MATERIALS[materialName] || MATERIALS['Mild Steel'];
  const isHSS = /HSS/i.test(tool.mat||'Carbide');
  const vc = tool.vc > 0 ? tool.vc : (M.vc[isHSS?'HSS':'Carbide']);
  const fz = tool.fz > 0 ? tool.fz : (M.fz[isHSS?'HSS':'Carbide']);
  let rpm = (1000*vc)/(Math.PI*Math.max(tool.dia,0.1));           // RPM = 1000·Vc/(π·D)
  const rpmLimited = Math.min(rpm, tool.maxRpm||99999, machine.maxSpindle);
  let feed;
  if(TOOL_TYPES[tool.type].kind==='drill' || tool.type==='ream' || tool.type==='bore'){
    feed = rpmLimited * fz * 2;                                    // mm/min = RPM · fpr
  } else {
    feed = rpmLimited * (tool.flutes||2) * fz;                     // F = RPM · z · fz
  }
  feed = Math.min(feed, machine.maxFeed);
  return {
    vc:U.r(vc,1), fz:U.r(fz,3), rpm:Math.round(rpmLimited), rpmCalc:Math.round(rpm),
    feed:U.r(feed,1), limited: rpm>rpmLimited
  };
}

/* ------------------------------------------------------- 6. OPERATIONS */
function opFields(list){ return list; }

/* ---- 6.1 Face milling ---- */
function genFace(op,st,tool){
  const B=stockBounds(st.workpiece), D=tool.dia, safe=st.machine.safeZ;
  const so=Math.max(D*op.stepover/100, 0.2);
  const moves=[], warn=[];
  const zEnd = op.stock>0 ? B.zTop-op.stock : B.zBot;
  const passes=depthPasses(B.zTop, zEnd, op.doc);
  const alongX = op.dir==='x';
  const x0=B.x0-op.lead, x1=B.x1+op.lead, y0=B.y0-D/2, y1=B.y1+D/2;
  const lines=[];
  if(alongX){
    let y=y0, guard=0;
    while(guard++<5000){
      lines.push({a:{x:x0,y},b:{x:x1,y}});
      if(y>=y1-1e-6) break;
      y=Math.min(y1,y+so);
    }
  } else {
    let x=x0, guard=0;
    while(guard++<5000){
      lines.push({a:{x,y:y0},b:{x,y:y1}});
      if(x>=x1-1e-6) break;
      x=Math.min(x1,x+so);
    }
  }
  passes.forEach((z,pi)=>{
    lines.forEach((ln,i)=>{
      const flip=(i%2===1);
      const A=flip?ln.b:ln.a, Bp=flip?ln.a:ln.b;
      moves.push(TP.rapid(A.x,A.y,safe));
      moves.push(TP.feed(A.x,A.y,z,{f:op.plungeFeed||op.feed/2}));
      moves.push(TP.feed(Bp.x,Bp.y,z,{f:op.feed}));
    });
  });
  moves.push(TP.rapid(moves[moves.length-1].x,moves[moves.length-1].y,safe));
  if(lines.length*passes.length>8000) warn.push('Face milling produces many moves — consider a larger step-over.');
  return {moves,warn};
}

/* ---- 6.2 Contour / profile ---- */
function contourPoly(op,st){
  if(op.shape==='poly' && op.polygon && op.polygon.length>2) return op.polygon.map(p=>({x:p.x,y:p.y}));
  if(op.shape==='circle') return Geo.circle(op.cx,op.cy,op.dia/2,96);
  return Geo.rect(op.cx,op.cy,op.w,op.h);
}

function genContour(op,st,tool){
  const safe=st.machine.safeZ, D=tool.dia;
  const poly=contourPoly(op,st);
  const moves=[], warn=[];
  const zTop = op.zTop||0;
  const passes=depthPasses(zTop, zTop-op.depth, op.doc);
  const compOn = op.dir==='climb' || op.dir==='conv';
  const rOff = D/2 + (op.finish||0);
  const roughPath = Geo.offset(poly, rOff);
  const finPath = Geo.offset(poly, D/2);

  const startIdx=0;
  const p0=poly[startIdx];
  const c=Geo.bbox(poly);
  const cx=(c.x0+c.x1)/2, cy=(c.y0+c.y1)/2;
  let dx=p0.x-cx, dy=p0.y-cy, dl=Math.hypot(dx,dy)||1; dx/=dl; dy/=dl;

  const runPass=(path,z,feed,comp)=>{
    const sp=path[startIdx];
    const lead={x:sp.x+dx*(D/2+2), y:sp.y+dy*(D/2+2)};
    if(comp){
      moves.push(TP.rapid(lead.x,lead.y,safe));
      moves.push(TP.feed(lead.x,lead.y,z,{f:op.plungeFeed||feed/2}));
      moves.push(TP.feed(sp.x,sp.y,z,{f:feed,comp:comp==='climb'?'G41':'G42',d:tool.num}));
    } else {
      moves.push(TP.rapid(lead.x,lead.y,safe));
      moves.push(TP.feed(lead.x,lead.y,z,{f:op.plungeFeed||feed/2}));
      moves.push(TP.feed(sp.x,sp.y,z,{f:feed}));
    }
    for(let i=1;i<path.length;i++) moves.push(TP.feed(path[i].x,path[i].y,z,{f:feed}));
    moves.push(TP.feed(path[0].x,path[0].y,z,{f:feed}));
    if(comp) moves.push(TP.feed(path[0].x+dx*(D/2+2),path[0].y+dy*(D/2+2),z,{f:feed,comp:'G40'}));
    else moves.push(TP.feed(lead.x,lead.y,z,{f:feed}));
  };

  const rough = passes.slice(0, op.finish>0 ? passes.length : passes.length);
  rough.forEach((z,i)=>{
    const isLast = i===passes.length-1;
    if(compOn && isLast && op.finish>0){ runPass(poly,z,op.feed,op.dir); }
    else runPass(roughPath,z,op.feed,null);
  });
  if(op.finish>0){
    runPass(finPath, passes[passes.length-1], op.feed, compOn?op.dir:null);
  }
  moves.push(TP.rapid(moves[moves.length-1].x,moves[moves.length-1].y,safe));
  return {moves,warn};
}

/* ---- 6.3 Rectangular pocket ---- */
function genPocketRect(op,st,tool){
  const safe=st.machine.safeZ, D=tool.dia;
  const poly=Geo.rect(op.cx,op.cy,op.w,op.h);
  const so=Math.max(D*op.stepover/100,0.2);
  const moves=[], warn=[];
  const passes=depthPasses(0,-op.depth,op.doc);
  const firstOff = -(D/2 + (op.finish||0));
  const rings=[];
  let off=firstOff, guard=0;
  while(guard++<2000){
    const r=Geo.offset(poly,off);
    const a=Math.abs(Geo.area(r));
    const bb=Geo.bbox(r);
    if(bb.w<so*0.9 || bb.h<so*0.9) break;
    rings.push(r);
    off-=so;
  }
  if(!rings.length) warn.push('Pocket too small for the selected tool.');
  passes.forEach((z,pi)=>{
    rings.forEach((ring,ri)=>{
      const s=ri%2? ring[ring.length-1] : ring[0];
      moves.push(TP.rapid(s.x,s.y,safe));
      if(ri===0 && pi===0){
        moves.push(TP.feed(s.x,s.y,z,{f:op.plungeFeed||op.feed/3}));
      } else {
        moves.push(TP.rapid(s.x,s.y,z+1));
        moves.push(TP.feed(s.x,s.y,z,{f:op.plungeFeed||op.feed/3}));
      }
      const seq = ri%2 ? ring.slice().reverse() : ring;
      for(let i=1;i<seq.length;i++) moves.push(TP.feed(seq[i].x,seq[i].y,z,{f:op.feed}));
      moves.push(TP.feed(seq[0].x,seq[0].y,z,{f:op.feed}));
    });
  });
  if(op.finish>0){
    const fp=Geo.offset(poly,-(D/2));
    const z=passes[passes.length-1];
    moves.push(TP.rapid(fp[0].x,fp[0].y,safe));
    moves.push(TP.feed(fp[0].x,fp[0].y,z,{f:op.feed}));
    for(let i=1;i<fp.length;i++) moves.push(TP.feed(fp[i].x,fp[i].y,z,{f:op.feed}));
    moves.push(TP.feed(fp[0].x,fp[0].y,z,{f:op.feed}));
  }
  moves.push(TP.rapid(moves[moves.length-1].x,moves[moves.length-1].y,safe));
  return {moves,warn};
}

/* ---- 6.4 Circular pocket ---- */
function genPocketCircle(op,st,tool){
  const safe=st.machine.safeZ, D=tool.dia;
  const moves=[], warn=[];
  const R=(op.dia-D)/2;
  if(R<=0){ warn.push('Tool diameter larger than pocket diameter.'); return {moves,warn}; }
  const so=Math.max(D*op.stepover/100,0.2);
  const passes=depthPasses(0,-op.depth,op.doc);
  const rings=[];
  for(let r=R; r>so*0.5; r-=so) rings.push(r);
  if(!rings.length) rings.push(R);
  passes.forEach((z,pi)=>{
    if(op.helicalEntry){
      const pitch=Math.min(op.helixPitch||D*0.4, 2);
      let cz=0, ang=0;
      moves.push(TP.rapid(op.cx,op.cy,safe));
      moves.push(TP.rapid(op.cx,op.cy,0.5));
      // helical ramp into the first ring
      const r0=Math.min(R, so);
      let guard=0;
      while(cz>z && guard++<500){
        const nz=Math.max(z, cz-pitch);
        const a0=ang, a1=ang+Math.PI;
        const sx=op.cx+r0*Math.cos(a0), sy=op.cy+r0*Math.sin(a0);
        if(Math.abs(cz-z)<1e-6) break;
        moves.push(TP.ccw(op.cx+r0*Math.cos(a1),op.cy+r0*Math.sin(a1),nz,
          op.cx-sx,op.cy-sy,{f:op.feed,pitch:pitch}));
        ang=a1; cz=nz;
      }
    } else {
      moves.push(TP.rapid(op.cx,op.cy,safe));
      moves.push(TP.feed(op.cx,op.cy,z,{f:op.plungeFeed||op.feed/3}));
    }
    rings.forEach(r=>{
      const sx=op.cx+r, sy=op.cy;
      moves.push(TP.feed(sx,sy,z,{f:op.feed}));
      moves.push(TP.ccw(op.cx-r,op.cy,z,-2*r,0,{f:op.feed}));
      moves.push(TP.ccw(sx,sy,z,2*r,0,{f:op.feed}));
    });
  });
  moves.push(TP.rapid(op.cx,op.cy,safe));
  return {moves,warn};
}

/* ---- 6.5 Slot ---- */
function genSlot(op,st,tool){
  const safe=st.machine.safeZ, D=tool.dia;
  const moves=[], warn=[];
  if(D>op.width) warn.push('Tool Ø is larger than the slot width.');
  const dx=op.x1-op.x0, dy=op.y1-op.y0;
  const L=Math.hypot(dx,dy)||1e-6;
  const ux=dx/L, uy=dy/L;
  const nx=-uy, ny=ux;
  const offs=[];
  const maxOff=Math.max(0,(op.width-D)/2);
  if(maxOff<1e-6) offs.push(0);
  else {
    const n=Math.max(1,Math.ceil(maxOff*2/Math.max(D*op.stepover/100,0.2)));
    for(let i=0;i<=n;i++) offs.push(-maxOff+ (2*maxOff)*i/n);
  }
  const passes=depthPasses(0,-op.depth,op.doc);
  passes.forEach(z=>{
    offs.forEach(o=>{
      const ax=op.x0+nx*o, ay=op.y0+ny*o;
      const bx=op.x1+nx*o, by=op.y1+ny*o;
      moves.push(TP.rapid(ax,ay,safe));
      moves.push(TP.feed(ax,ay,z,{f:op.plungeFeed||op.feed/3}));
      moves.push(TP.feed(bx,by,z,{f:op.feed}));
      moves.push(TP.rapid(bx,by,safe));
    });
  });
  return {moves,warn};
}

/* ---- 6.6 Hole patterns ---- */
function holePattern(op){
  const holes=[];
  if(op.pattern==='single') holes.push({x:op.cx,y:op.cy});
  else if(op.pattern==='grid'){
    const nx=Math.max(1,Math.round(op.nx)), ny=Math.max(1,Math.round(op.ny));
    for(let j=0;j<ny;j++) for(let i=0;i<nx;i++)
      holes.push({x:op.x0+i*op.dx, y:op.y0+j*op.dy});
  } else if(op.pattern==='circle'){
    const n=Math.max(1,Math.round(op.nHoles));
    for(let i=0;i<n;i++){
      const a=U.d2r(op.startAngle||0)+2*Math.PI*i/n;
      holes.push({x:op.cx+op.bcd/2*Math.cos(a), y:op.cy+op.bcd/2*Math.sin(a)});
    }
  } else if(op.pattern==='linear'){
    const n=Math.max(1,Math.round(op.nHoles));
    const a=U.d2r(op.angle||0);
    for(let i=0;i<n;i++)
      holes.push({x:op.x0+Math.cos(a)*op.spacing*i, y:op.y0+Math.sin(a)*op.spacing*i});
  }
  return holes;
}

function genDrill(op,st,tool,kind){
  const safe=st.machine.safeZ;
  const holes=holePattern(op);
  const moves=[], warn=[];
  if(!holes.length) warn.push('No hole positions defined.');
  const rPlane = op.r||2;
  const depth = -Math.abs(op.depth);
  const cd = calcCut(tool, st.workpiece.material, st.machine);
  let code='G81', q=null, f=cd.feed;
  if(kind==='peck'){ code='G83'; q=op.peck||Math.max(1,tool.dia*0.5); }
  if(kind==='tap'){ code='G84'; f=U.r(op.pitch*cd.rpm,2); }
  if(kind==='ream'){ code='G85'; }
  if(kind==='bore'){ code='G86'; }
  moves.push(TP.cycle(code,holes,{depth,r:rPlane,f,q,pitch:op.pitch,rpm:cd.rpm}));
  if(kind==='tap') warn.push('Rigid tapping requires M29 support — verify the post/controller.');
  return {moves,warn};
}

/* ---- 6.7 Helical interpolation (hole milling) ---- */
function genHelical(op,st,tool){
  const safe=st.machine.safeZ, D=tool.dia;
  const moves=[], warn=[];
  const R=(op.dia-D)/2;
  if(R<=0){ warn.push('Tool Ø must be smaller than the hole Ø.'); return {moves,warn}; }
  const pitch=op.pitch||1.5;
  const depth=Math.abs(op.depth);
  const revs=Math.ceil(depth/pitch);
  const stepZ=depth/revs;
  let z=0;
  moves.push(TP.rapid(op.cx+R,op.cy,safe));
  moves.push(TP.rapid(op.cx+R,op.cy,1));
  for(let i=0;i<revs;i++){
    const nz=-(i+1)*stepZ;
    moves.push(TP.ccw(op.cx-R,op.cy,nz,-2*R,0,{f:op.feed,pitch:stepZ}));
    moves.push(TP.ccw(op.cx+R,op.cy,nz,2*R,0,{f:op.feed,pitch:stepZ}));
    z=nz;
  }
  moves.push(TP.ccw(op.cx+R,op.cy,z,0,0,{f:op.feed}));
  moves.push(TP.rapid(op.cx+R,op.cy,safe));
  return {moves,warn};
}

/* ---- 6.8 Thread milling ---- */
function genThreadMill(op,st,tool){
  const safe=st.machine.safeZ, D=tool.dia;
  const moves=[], warn=[];
  const R=(op.dia-D)/2;
  if(R<=0){ warn.push('Thread mill Ø must be smaller than the thread Ø.'); return {moves,warn}; }
  const P=op.pitch, depth=Math.abs(op.depth);
  const revs=depth/P;
  const total=Math.ceil(revs*4)/4;
  moves.push(TP.rapid(op.cx,op.cy,safe));
  moves.push(TP.rapid(op.cx,op.cy,1));
  // lead-in arc to the cutting radius
  moves.push(TP.ccw(op.cx+R,op.cy,0,R,0,{f:op.feed}));
  const steps=Math.ceil(total*4);
  for(let i=1;i<=steps;i++){
    const t=i/steps, a=2*Math.PI*4*t*revs/ (revs||1) * (revs/ (Math.ceil(revs*4)/4) ) ;
    const ang=2*Math.PI*t*revs;
    const z=-depth*t;
    moves.push(TP.feed(op.cx+R*Math.cos(ang), op.cy+R*Math.sin(ang), z, {f:op.feed}));
  }
  moves.push(TP.feed(op.cx+R,op.cy,-depth,{f:op.feed}));
  moves.push(TP.ccw(op.cx,op.cy,-depth,-R,0,{f:op.feed}));
  moves.push(TP.rapid(op.cx,op.cy,safe));
  return {moves,warn};
}

/* ---- 6.9 3D surface raster (ball nose) ---- */
const SURFACES = {
  dome:(x,y)=> {const r=Math.hypot(x,y); return Math.sqrt(Math.max(0,1-(r/50)*(r/50)))*18;},
  sine:(x,y)=> 6*Math.sin(x/12)*Math.cos(y/12),
  wave:(x,y)=> 4*Math.sin(Math.hypot(x,y)/8),
  saddle:(x,y)=>(x*x-y*y)/400,
  flat:(x,y)=>0
};

function genSurface3D(op,st,tool){
  const safe=st.machine.safeZ;
  const f=SURFACES[op.surface]||SURFACES.dome;
  const step=Math.max(op.stepover,0.2);
  const R=tool.dia/2;
  const moves=[], warn=[];
  const x0=op.x0, x1=op.x1, y0=op.y0, y1=op.y1;
  const lines=[];
  let y=y0, guard=0;
  while(guard++<4000){
    lines.push(y);
    if(y>=y1-1e-6) break;
    y=Math.min(y1,y+step);
  }
  const N=Math.max(8,Math.ceil((x1-x0)/2));
  const dz=(xx,yy)=>{
    const e=0.5;
    const fx=(f(xx+e,yy)-f(xx-e,yy))/(2*e);
    const fy=(f(xx,yy+e)-f(xx,yy-e))/(2*e);
    const nz=1/Math.sqrt(fx*fx+fy*fy+1);
    return f(xx,yy) + R*(nz-1);   // ball-nose tip centre height
  };
  if(lines.length*N>25000){
    warn.push('Surface toolpath truncated at 25000 moves — increase step-over.');
  }
  let count=0;
  lines.forEach((yy,i)=>{
    if(count>25000) return;
    const flip=i%2===1;
    const xs=[];
    for(let k=0;k<=N;k++){ const t=k/N; xs.push(x0+(x1-x0)*t); }
    const seq=flip?xs.slice().reverse():xs;
    const first=seq[0];
    moves.push(TP.rapid(first, yy, safe));
    moves.push(TP.feed(first, yy, dz(first,yy)+1, {f:op.feed}));
    seq.forEach(xx=>{ moves.push(TP.feed(xx,yy,dz(xx,yy),{f:op.feed})); count++; });
  });
  moves.push(TP.rapid(moves[moves.length-1].x, moves[moves.length-1].y, safe));
  return {moves,warn};
}

/* ---- 6.10 4-axis indexed (drilling/pattern around a cylinder) ---- */
function genIndexed4(op,st,tool){
  const safe=st.machine.safeZ;
  const moves=[], warn=[];
  const n=Math.max(1,Math.round(op.indexes));
  const R=Math.max(1,op.radius);
  const cd=calcCut(tool, st.workpiece.material, st.machine);
  for(let i=0;i<n;i++){
    const A=i*360/n;
    const holes=[];
    const count=Math.max(1,Math.round(op.holesPerIndex||1));
    for(let k=0;k<count;k++){
      const x=(op.x0||0)+ (count>1 ? (op.spacing||10)*k : 0);
      holes.push({x,y:0});
    }
    moves.push(TP.rapid(0,0,safe,{a:A}));
    moves.push(TP.cycle('G81',holes,{depth:-Math.abs(op.depth),r:2,f:cd.feed,a:A}));
  }
  warn.push('4-axis INDEXED operation: each index is positioned with A, then machined in XY. Verify clearance for rotation.');
  return {moves,warn};
}

/* ---- 6.11 4-axis simultaneous — wrap a profile around a cylinder ---- */
function genWrapContour(op,st,tool){
  const safe=st.machine.safeZ;
  const moves=[], warn=[];
  const R=Math.max(1,op.radius);
  const depth=Math.abs(op.depth);
  // profile in (u = arc length around, v = axial) plane
  const pts = (op.profile && op.profile.length>2) ? op.profile
            : Geo.circle(0,0,op.dia/2,64);
  const passes=depthPasses(0,-depth,op.doc);
  moves.push(TP.rapid(pts[0].x, 0, 0, {a:0}));
  passes.forEach(z=>{
    pts.forEach((p,i)=>{
      const a = U.r2d(p.y/R);          // arc-length -> degrees
      moves.push(TP.feed(p.x, 0, z, {a:a, f:op.feed}));
    });
  });
  moves.push(TP.rapid(pts[0].x,0,safe,{a:0}));
  warn.push('SIMULTANEOUS 4-axis: X and A are interpolated. Y/Z are fixed at the top of the cylinder — verify your post handles X+A interpolation.');
  return {moves,warn};
}

/* ---- 6.12 Chamfer ---- */
function genChamfer(op,st,tool){
  const safe=st.machine.safeZ, D=tool.dia;
  const moves=[], warn=[];
  const poly=contourPoly(op,st);
  if(op.width > D/2) warn.push('Chamfer width exceeds tool tip radius — the tip cannot reach the lower edge.');
  const path=Geo.offset(poly, D/2);
  const z=-Math.abs(op.width);
  moves.push(TP.rapid(path[0].x,path[0].y,safe));
  moves.push(TP.feed(path[0].x,path[0].y,z,{f:op.plungeFeed||op.feed/3}));
  for(let i=1;i<path.length;i++) moves.push(TP.feed(path[i].x,path[i].y,z,{f:op.feed}));
  moves.push(TP.feed(path[0].x,path[0].y,z,{f:op.feed}));
  moves.push(TP.rapid(path[0].x,path[0].y,safe));
  return {moves,warn};
}

/* ---- 6.13 Engraving (follow a closed profile at shallow depth) ---- */
function genEngrave(op,st,tool){
  const r=genContour(Object.assign({},op,{depth:op.depth,doc:op.depth,finish:0,dir:'none'}),
                     st,tool);
  r.warn.push('Engraving follows the supplied closed profile. Do not use for text without a stroke font path.');
  return r;
}

/* ---- 6.14 Indexed 5-axis (tilt B/C, machine a planar feature) ---- */
function genIndexed5(op,st,tool){
  const moves=[], warn=[];
  warn.push('INDEXED 5-axis: the tool is tilted to a fixed orientation, then a planar feature is machined. '+
            'The post must apply your machine kinematics (pivot offsets) — verify the transformed coordinates.');
  const safe=st.machine.safeZ;
  const B=U.d2r(op.tiltB||0), C=U.d2r(op.rotC||0);
  const cx=op.cx||0, cy=op.cy||0, r=op.dia/2||10;
  const depth=Math.abs(op.depth||2);
  const passes=depthPasses(0,-depth,op.doc||1);
  const rot=(x,y,z)=>{
    // C rotation about Z, then B rotation about Y
    let X=x*Math.cos(C)-y*Math.sin(C), Y=x*Math.sin(C)+y*Math.cos(C), Z=z;
    let X2=X*Math.cos(B)+Z*Math.sin(B), Z2=-X*Math.sin(B)+Z*Math.cos(B);
    return {x:X2,y:Y,z:Z2};
  };
  const p0=rot(cx+r,cy,0);
  moves.push(TP.rapid(p0.x,p0.y,safe,{b:U.r2d(B),c:U.r2d(C)}));
  passes.forEach(z=>{
    for(let i=0;i<=72;i++){
      const a=2*Math.PI*i/72;
      const p=rot(cx+r*Math.cos(a), cy+r*Math.sin(a), z);
      moves.push(TP.feed(p.x,p.y,p.z,{b:U.r2d(B),c:U.r2d(C),f:op.feed||300}));
    }
  });
  return {moves,warn};
}

/* ---- Operation registry ---- */
const OPS = {
  face:{label:'Face Milling', cat:'2.5D', gen:genFace, fields:[
    {k:'stepover',l:'Step-over (% of Ø)',t:'n',d:70},
    {k:'doc',l:'Depth of cut (mm)',t:'n',d:1.0},
    {k:'stock',l:'Stock to remove (mm) 0=all',t:'n',d:0},
    {k:'dir',l:'Raster direction',t:'s',opts:[['x','Along X'],['y','Along Y']],d:'x'},
    {k:'lead',l:'Over-travel (mm)',t:'n',d:5}]},

  contour:{label:'Contour / Profile Milling', cat:'2.5D', gen:genContour, fields:[
    {k:'shape',l:'Shape',t:'s',opts:[['rect','Rectangle'],['circle','Circle'],['poly','Custom polygon / gear']],d:'rect'},
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'w',l:'Width X (mm)',t:'n',d:60},{k:'h',l:'Height Y (mm)',t:'n',d:40},
    {k:'dia',l:'Diameter (mm)',t:'n',d:50},
    {k:'depth',l:'Total depth (mm)',t:'n',d:5},
    {k:'doc',l:'Depth of cut (mm)',t:'n',d:1},
    {k:'finish',l:'Finishing allowance (mm)',t:'n',d:0.2},
    {k:'dir',l:'Cutter compensation',t:'s',opts:[['none','None (G40)'],['climb','Climb (G41)'],['conv','Conventional (G42)']],d:'none'}]},

  pocketRect:{label:'Pocket Milling (rectangular)', cat:'2.5D', gen:genPocketRect, fields:[
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'w',l:'Pocket X (mm)',t:'n',d:40},{k:'h',l:'Pocket Y (mm)',t:'n',d:30},
    {k:'depth',l:'Depth (mm)',t:'n',d:6},
    {k:'doc',l:'Depth of cut (mm)',t:'n',d:1},
    {k:'stepover',l:'Step-over (% of Ø)',t:'n',d:60},
    {k:'finish',l:'Finishing allowance (mm)',t:'n',d:0.2}]},

  pocketCircle:{label:'Circular Pocket Milling', cat:'2.5D', gen:genPocketCircle, fields:[
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'dia',l:'Pocket Ø (mm)',t:'n',d:40},
    {k:'depth',l:'Depth (mm)',t:'n',d:8},
    {k:'doc',l:'Depth of cut (mm)',t:'n',d:1},
    {k:'stepover',l:'Step-over (% of Ø)',t:'n',d:60},
    {k:'helicalEntry',l:'Helical entry',t:'c',d:true},
    {k:'helixPitch',l:'Helix pitch (mm/rev)',t:'n',d:2}]},

  slot:{label:'Slot Milling', cat:'2.5D', gen:genSlot, fields:[
    {k:'x0',l:'Start X',t:'n',d:-30},{k:'y0',l:'Start Y',t:'n',d:0},
    {k:'x1',l:'End X',t:'n',d:30},{k:'y1',l:'End Y',t:'n',d:0},
    {k:'width',l:'Slot width (mm)',t:'n',d:10},
    {k:'depth',l:'Depth (mm)',t:'n',d:5},
    {k:'doc',l:'Depth of cut (mm)',t:'n',d:1},
    {k:'stepover',l:'Step-over (% of Ø)',t:'n',d:60}]},

  drill:{label:'Drilling (G81)', cat:'Hole', gen:(o,s,t)=>genDrill(o,s,t,'drill'), fields:[
    {k:'pattern',l:'Pattern',t:'s',opts:[['single','Single'],['grid','Grid'],['circle','Bolt circle'],['linear','Linear']],d:'grid'},
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'x0',l:'Grid X0',t:'n',d:-30},{k:'y0',l:'Grid Y0',t:'n',d:-20},
    {k:'nx',l:'Count X',t:'n',d:3},{k:'ny',l:'Count Y',t:'n',d:2},
    {k:'dx',l:'Pitch X',t:'n',d:30},{k:'dy',l:'Pitch Y',t:'n',d:20},
    {k:'bcd',l:'Bolt circle Ø',t:'n',d:60},{k:'nHoles',l:'Holes on circle',t:'n',d:6},
    {k:'startAngle',l:'Start angle (°)',t:'n',d:0},
    {k:'spacing',l:'Linear spacing',t:'n',d:15},{k:'angle',l:'Linear angle (°)',t:'n',d:0},
    {k:'depth',l:'Hole depth (mm)',t:'n',d:10},
    {k:'r',l:'R plane (mm)',t:'n',d:2}]},

  peck:{label:'Peck Drilling (G83)', cat:'Hole', gen:(o,s,t)=>genDrill(o,s,t,'peck'), fields:[
    {k:'pattern',l:'Pattern',t:'s',opts:[['single','Single'],['grid','Grid'],['circle','Bolt circle'],['linear','Linear']],d:'grid'},
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'x0',l:'Grid X0',t:'n',d:-30},{k:'y0',l:'Grid Y0',t:'n',d:-20},
    {k:'nx',l:'Count X',t:'n',d:3},{k:'ny',l:'Count Y',t:'n',d:2},
    {k:'dx',l:'Pitch X',t:'n',d:30},{k:'dy',l:'Pitch Y',t:'n',d:20},
    {k:'bcd',l:'Bolt circle Ø',t:'n',d:60},{k:'nHoles',l:'Holes on circle',t:'n',d:6},
    {k:'startAngle',l:'Start angle (°)',t:'n',d:0},
    {k:'spacing',l:'Linear spacing',t:'n',d:15},{k:'angle',l:'Linear angle (°)',t:'n',d:0},
    {k:'depth',l:'Hole depth (mm)',t:'n',d:25},
    {k:'peck',l:'Peck depth Q (mm)',t:'n',d:3},
    {k:'r',l:'R plane (mm)',t:'n',d:2}]},

  tap:{label:'Tapping (G84)', cat:'Hole', gen:(o,s,t)=>genDrill(o,s,t,'tap'), fields:[
    {k:'pattern',l:'Pattern',t:'s',opts:[['single','Single'],['grid','Grid'],['circle','Bolt circle'],['linear','Linear']],d:'single'},
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'x0',l:'Grid X0',t:'n',d:0},{k:'y0',l:'Grid Y0',t:'n',d:0},
    {k:'nx',l:'Count X',t:'n',d:1},{k:'ny',l:'Count Y',t:'n',d:1},
    {k:'dx',l:'Pitch X',t:'n',d:20},{k:'dy',l:'Pitch Y',t:'n',d:20},
    {k:'bcd',l:'Bolt circle Ø',t:'n',d:60},{k:'nHoles',l:'Holes on circle',t:'n',d:6},
    {k:'spacing',l:'Linear spacing',t:'n',d:15},{k:'angle',l:'Linear angle (°)',t:'n',d:0},
    {k:'depth',l:'Thread depth (mm)',t:'n',d:12},
    {k:'pitch',l:'Thread pitch (mm)',t:'n',d:1.25},
    {k:'r',l:'R plane (mm)',t:'n',d:3}]},

  ream:{label:'Reaming (G85)', cat:'Hole', gen:(o,s,t)=>genDrill(o,s,t,'ream'), fields:[
    {k:'pattern',l:'Pattern',t:'s',opts:[['single','Single'],['grid','Grid'],['circle','Bolt circle']],d:'single'},
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'x0',l:'Grid X0',t:'n',d:0},{k:'y0',l:'Grid Y0',t:'n',d:0},
    {k:'nx',l:'Count X',t:'n',d:1},{k:'ny',l:'Count Y',t:'n',d:1},
    {k:'dx',l:'Pitch X',t:'n',d:20},{k:'dy',l:'Pitch Y',t:'n',d:20},
    {k:'bcd',l:'Bolt circle Ø',t:'n',d:60},{k:'nHoles',l:'Holes on circle',t:'n',d:6},
    {k:'depth',l:'Depth (mm)',t:'n',d:10},{k:'r',l:'R plane (mm)',t:'n',d:2}]},

  bore:{label:'Boring (G86)', cat:'Hole', gen:(o,s,t)=>genDrill(o,s,t,'bore'), fields:[
    {k:'pattern',l:'Pattern',t:'s',opts:[['single','Single'],['circle','Bolt circle']],d:'single'},
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'bcd',l:'Bolt circle Ø',t:'n',d:60},{k:'nHoles',l:'Holes on circle',t:'n',d:4},
    {k:'depth',l:'Depth (mm)',t:'n',d:20},{k:'r',l:'R plane (mm)',t:'n',d:2}]},

  chamfer:{label:'Chamfering', cat:'2.5D', gen:genChamfer, fields:[
    {k:'shape',l:'Shape',t:'s',opts:[['rect','Rectangle'],['circle','Circle']],d:'rect'},
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'w',l:'Width X',t:'n',d:60},{k:'h',l:'Height Y',t:'n',d:40},
    {k:'dia',l:'Diameter',t:'n',d:50},
    {k:'width',l:'Chamfer width (mm)',t:'n',d:1}]},

  engrave:{label:'Engraving', cat:'2.5D', gen:genEngrave, fields:[
    {k:'shape',l:'Profile',t:'s',opts:[['rect','Rectangle'],['circle','Circle'],['poly','Custom polygon']],d:'rect'},
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'w',l:'Width X',t:'n',d:60},{k:'h',l:'Height Y',t:'n',d:40},
    {k:'dia',l:'Diameter',t:'n',d:40},
    {k:'depth',l:'Engrave depth (mm)',t:'n',d:0.3}]},

  helical:{label:'Helical Interpolation', cat:'2.5D', gen:genHelical, fields:[
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'dia',l:'Bore Ø (mm)',t:'n',d:25},
    {k:'depth',l:'Depth (mm)',t:'n',d:10},
    {k:'pitch',l:'Helix pitch (mm/rev)',t:'n',d:1.5}]},

  threadmill:{label:'Thread Milling', cat:'2.5D', gen:genThreadMill, fields:[
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'dia',l:'Thread Ø (mm)',t:'n',d:20},
    {k:'pitch',l:'Thread pitch (mm)',t:'n',d:2.5},
    {k:'depth',l:'Thread depth (mm)',t:'n',d:20}]},

  surface3d:{label:'3D Surface Machining', cat:'3D', gen:genSurface3D, fields:[
    {k:'surface',l:'Surface',t:'s',opts:[['dome','Dome'],['sine','Sine grid'],['wave','Radial wave'],['saddle','Saddle'],['flat','Flat']],d:'dome'},
    {k:'x0',l:'X min',t:'n',d:-45},{k:'x1',l:'X max',t:'n',d:45},
    {k:'y0',l:'Y min',t:'n',d:-25},{k:'y1',l:'Y max',t:'n',d:25},
    {k:'stepover',l:'Step-over (mm)',t:'n',d:0.5}]},

  indexed4:{label:'Indexed 4-Axis Machining', cat:'4-axis', gen:genIndexed4, fields:[
    {k:'indexes',l:'Number of indexes',t:'n',d:4},
    {k:'radius',l:'Workpiece radius (mm)',t:'n',d:25},
    {k:'x0',l:'First hole X',t:'n',d:-20},
    {k:'holesPerIndex',l:'Holes per index',t:'n',d:3},
    {k:'spacing',l:'Hole spacing X',t:'n',d:20},
    {k:'depth',l:'Hole depth (mm)',t:'n',d:8}]},

  wrap:{label:'Simultaneous 4-Axis (wrap contour)', cat:'4-axis', gen:genWrapContour, fields:[
    {k:'radius',l:'Cylinder radius (mm)',t:'n',d:25},
    {k:'dia',l:'Profile Ø in flat (mm)',t:'n',d:40},
    {k:'depth',l:'Depth (mm)',t:'n',d:2},
    {k:'doc',l:'Depth of cut (mm)',t:'n',d:1}]},

  indexed5:{label:'Indexed 5-Axis Machining', cat:'5-axis', gen:genIndexed5, fields:[
    {k:'cx',l:'Centre X',t:'n',d:0},{k:'cy',l:'Centre Y',t:'n',d:0},
    {k:'dia',l:'Feature Ø (mm)',t:'n',d:20},
    {k:'tiltB',l:'B tilt (°)',t:'n',d:30},
    {k:'rotC',l:'C rotation (°)',t:'n',d:0},
    {k:'depth',l:'Depth (mm)',t:'n',d:2},
    {k:'doc',l:'Depth of cut (mm)',t:'n',d:1}]}
};

const UNSUPPORTED = {
  'Spiral bevel gear generation':'Requires a dedicated bevel generator or simultaneous 5-axis with a cradle model — not implemented.',
  'Simultaneous 5-axis contouring':'Requires full machine kinematics (RTCP/TCPM) — this build implements indexed 5-axis only.',
  'Automatic feature recognition from CAD (STEP/IGES)':'No CAD kernel is included; geometry is parametric.',
  'Collision checking against arbitrary fixture geometry':'Only stock/travel/rotary-limit checks are performed.'
};

/* --------------------------------------------------------------- 7. GEAR */
const Gear = {
  params:{
    type:'spur', module:2, teeth:20, mateTeeth:40, pressureAngle:20, helixAngle:20,
    faceWidth:20, backlash:0.1, profileShift:0, bore:10, material:'Mild Steel',
    addendumCoef:1.0, dedendumCoef:1.25, hand:'right', starts:1, chainPitch:12.7,
    rollerDia:7.92, rotaryRatio:40
  },

  calc(p){
    const out={warnings:[]};
    const pa=U.d2r(p.pressureAngle||20);
    out.pressureAngleDeg=p.pressureAngle||20;

    if(p.type==='spur'||p.type==='helical'||p.type==='wormwheel'){
      const m=p.module, z=p.teeth, x=p.profileShift||0;
      const beta = p.type==='helical' ? U.d2r(p.helixAngle||0)
                 : p.type==='wormwheel' ? U.d2r(p.helixAngle||0) : 0;
      const mt = m/Math.cos(beta);                 // transverse module
      const d = mt*z;                              // transverse pitch dia
      const r = d/2;
      const rb = r*Math.cos(pa);
      const ha = m*(p.addendumCoef||1.0);
      const hf = m*(p.dedendumCoef||1.25);
      const da = d + 2*(ha + m*x);
      const df = d - 2*(hf - m*x);
      const invPa = Math.tan(pa)-pa;
      const s = mt*(Math.PI/2 + 2*x*Math.tan(pa)) - (p.backlash||0);
      const thetaPitch = s/(2*r);
      const thetaB = thetaPitch + invPa;
      const lead = Math.PI*d/Math.tan(beta||1e-9);
      Object.assign(out,{
        transverseModule:U.r(mt,4), pitchDia:U.r(d,3), baseDia:U.r(rb*2,3),
        outsideDia:U.r(da,3), rootDia:U.r(df,3),
        addendum:U.r(ha,3), dedendum:U.r(hf,3),
        circularPitch:U.r(Math.PI*mt,4), toothThickness:U.r(s,4),
        helixAngle:U.r(U.r2d(beta),2), lead: beta?U.r(lead,2):'—',
        axialPitch: beta?U.r(Math.PI*mt/Math.tan(beta),4):'—',
        centerDistance:U.r(d/2 + mt*(p.mateTeeth||p.teeth)/2,3),
        ratio: (p.mateTeeth? U.r(p.mateTeeth/z,4):'—'),
        baseRadius:rb, rootRadius:Math.max(df/2,0.1), tipRadius:da/2,
        thetaB, pitchRadius:r
      });
      if(z<17 && !x) out.warnings.push('Tooth count < 17 with zero profile shift — undercut risk.');
      if(da/2*Math.sin(Math.PI/z) < 0) out.warnings.push('Tip geometry invalid.');
      out.profile = Gear.involuteProfile({
        z, m:mt, paDeg:p.pressureAngle||20, xShift:x,
        backlash:p.backlash||0, rRoot:Math.max(df/2,0.1), rTip:da/2, rb
      });
    }

    else if(p.type==='rack'){
      const m=p.module, z=p.teeth;
      const h=2.25*m;
      out.pitchLine=0; out.toothHeight=U.r(h,3);
      out.pitch=U.r(Math.PI*m,4); out.length=U.r(Math.PI*m*z,3);
      out.addendum=U.r(m,3); out.dedendum=U.r(1.25*m,3);
      out.profile = Gear.rackProfile(m, z, U.d2r(p.pressureAngle||20));
    }

    else if(p.type==='bevel'){
      const m=p.module, z=p.teeth, z2=p.mateTeeth||p.teeth*2;
      const delta=Math.atan(z/z2);
      const d=m*z;
      const R=d/(2*Math.sin(delta));
      const b=Math.min(p.faceWidth||10, R/3);
      const zv=z/Math.cos(delta);
      const do_=d+2*m*Math.cos(delta);
      Object.assign(out,{
        pitchDia:U.r(d,3), pitchConeAngle:U.r(U.r2d(delta),3),
        coneDistance:U.r(R,3), faceWidth:U.r(b,3),
        virtualTeeth:U.r(zv,2),
        outsideDia:U.r(do_,3),
        addendumAngle:U.r(U.r2d(Math.atan(m/R)),3),
        dedendumAngle:U.r(U.r2d(Math.atan(1.25*m/R)),3),
        rootConeAngle:U.r(U.r2d(delta-Math.atan(1.25*m/R)),3),
        ratio:U.r(z2/z,4), shaftAngle:90
      });
      out.warnings.push('Straight bevel: only the outer tooth form is generated. True bevel flanks require a bevel generator or 5-axis generating motion.');
      out.profile = Gear.involuteProfile({
        z:Math.round(zv), m, paDeg:p.pressureAngle||20, xShift:0, backlash:0,
        rRoot:(d/2-1.25*m)/Math.cos(delta), rTip:(d/2+m)/Math.cos(delta),
        rb:(d/2)*Math.cos(U.d2r(p.pressureAngle||20))/Math.cos(delta)
      });
    }

    else if(p.type==='sprocket'){
      const p2=p.chainPitch, z=p.teeth, dr=p.rollerDia;
      const PD=p2/Math.sin(Math.PI/z);
      const OD=p2*(0.6+1/Math.tan(Math.PI/z));
      const RD=PD-dr;
      Object.assign(out,{
        chainPitch:U.r(p2,3), rollerDia:U.r(dr,3),
        pitchDia:U.r(PD,3), outsideDia:U.r(OD,3), rootDia:U.r(RD,3),
        pitchRadius:PD/2, rootRadius:RD/2, tipRadius:OD/2, profile:Gear.sprocketProfile(z,p2,dr)
      });
    }

    else if(p.type==='worm'){
      const m=p.module, z1=p.starts||1, d1=p.teeth; // teeth field = worm pitch Ø
      const lead=Math.PI*m*z1;
      const gamma=Math.atan(lead/(Math.PI*d1));
      Object.assign(out,{
        axialModule:U.r(m,3), starts:z1,
        pitchDia:U.r(d1,3), lead:U.r(lead,3),
        leadAngle:U.r(U.r2d(gamma),3),
        outsideDia:U.r(d1+2*m,3), rootDia:U.r(d1-2.4*m,3),
        axialPitch:U.r(Math.PI*m,4),
        ratio:U.r((p.mateTeeth||40)/z1,4)
      });
      out.warnings.push('Worm shaft: machined as a helical thread with simultaneous 4-axis (X+A) interpolation.');
      out.worm={d1, lead, gamma, m, z1};
    }

    else if(p.type==='spiralbevel'){
      out.warnings.push('Spiral bevel gears are NOT supported in this build. A spiral bevel requires a generating cradle (Gleason/Klingelnberg) or full 5-axis with a cutter model.');
    }

    /* Rotary indexing table */
    const ratio=p.rotaryRatio||40;
    out.indexing={
      ratio, indexDeg:360/p.teeth,
      handwheelTurns:U.r(ratio/p.teeth,6),
      holes:U.r(ratio/p.teeth*ratio,3)
    };
    return out;
  },

  involuteProfile({z,m,paDeg=20,xShift=0,backlash=0,rRoot,rTip,rb}){
    const pa=U.d2r(paDeg);
    const N=8;
    const thetaB = (m*(Math.PI/2 + 2*xShift*Math.tan(pa)) - backlash)/(2*Math.max(rb/Math.cos(pa),1)) + (Math.tan(pa)-pa);
    const flankAt=(r)=>{
      if(r<=rb) return thetaB;
      const a=Math.acos(Math.min(1,rb/r));
      return thetaB-(Math.tan(a)-a);
    };
    const pts=[];
    for(let i=0;i<z;i++){
      const c=2*Math.PI*i/z;
      // right flank root -> tip
      for(let k=0;k<=N;k++){
        const t=k/N;
        const r=rRoot+(rTip-rRoot)*Math.pow(t,1.35);
        pts.push({x:r*Math.cos(c-flankAt(r)), y:r*Math.sin(c-flankAt(r))});
      }
      // tip arc
      const tipA=flankAt(rTip);
      if(tipA>0){
        for(let k=1;k<4;k++){
          const a=c-tipA+2*tipA*k/4;
          pts.push({x:rTip*Math.cos(a), y:rTip*Math.sin(a)});
        }
      }
      // left flank tip -> root
      for(let k=N;k>=0;k--){
        const t=k/N;
        const r=rRoot+(rTip-rRoot)*Math.pow(t,1.35);
        pts.push({x:r*Math.cos(c+flankAt(r)), y:r*Math.sin(c+flankAt(r))});
      }
      // root arc to next tooth
      const a0=c+flankAt(rRoot), a1=c+2*Math.PI/z-flankAt(rRoot);
      for(let k=1;k<4;k++){
        const a=a0+(a1-a0)*k/4;
        pts.push({x:rRoot*Math.cos(a), y:rRoot*Math.sin(a)});
      }
    }
    // de-duplicate near-identical consecutive points
    const clean=[];
    pts.forEach(p=>{
      const q=clean[clean.length-1];
      if(!q || Math.hypot(p.x-q.x,p.y-q.y)>1e-4) clean.push(p);
    });
    return clean;
  },

  rackProfile(m,z,pa){
    const pts=[];
    const pitch=Math.PI*m, ha=m, hf=1.25*m;
    const tw=pitch/2;               // tooth thickness at pitch line
    const t0=tw/2*Math.tan(pa);     // horizontal shift over addendum
    const t1=hf*Math.tan(pa);
    for(let i=0;i<z;i++){
      const x0=i*pitch;
      pts.push({x:x0-tw/2-t1, y:-hf});
      pts.push({x:x0-tw/2+t0,  y: ha});
      pts.push({x:x0+tw/2-t0,  y: ha});
      pts.push({x:x0+tw/2+t1,  y:-hf});
      pts.push({x:x0+pitch-tw/2-t1, y:-hf});
    }
    return pts;
  },

  sprocketProfile(z,p,dr){
    const pts=[];
    const PD=p/Math.sin(Math.PI/z);
    const OD=p*(0.6+1/Math.tan(Math.PI/z));
    const RD=PD-dr;
    const Rr=dr/2;
    for(let i=0;i<z;i++){
      const c=2*Math.PI*i/z;
      // root arc (seat)
      const span=Math.min(0.9*Math.PI/z, Math.asin(Math.min(1,Rr/Math.max(RD,1e-6))));
      for(let k=0;k<=6;k++){
        const a=c-span+2*span*k/6;
        pts.push({x:RD*Math.cos(a), y:RD*Math.sin(a)});
      }
      // flank up to tip
      const aTip=c+2*Math.PI/z*0.5-0.02;
      pts.push({x:OD*Math.cos(c+span+0.02), y:OD*Math.sin(c+span+0.02)});
      pts.push({x:OD*Math.cos(aTip), y:OD*Math.sin(aTip)});
    }
    return pts;
  },

  /* Gear → 3-axis profile operation */
  toContourOp(p, calc){
    const poly = calc.profile;
    if(!poly) return null;
    return {
      id:U.uid(), type:'contour', label:'Gear profile — '+p.type,
      toolId:null,
      shape:'poly', polygon:poly,
      cx:0, cy:0, w:0, h:0, dia:0,
      depth:p.faceWidth, doc:Math.max(0.5,p.module*0.5), finish:0.15, dir:'none'
    };
  }
};

/* ------------------------------------------------------ 8. POST PROCESSOR */
function postProcess(){
  const st=state, m=st.machine, W=st.workpiece, C=CONTROLLERS[m.controller];
  const L=[]; const add=(t,ref)=>L.push({t,ref:ref||null});
  const nf=v=>U.f(v,3);

  add('%');
  add('O'+String(st.programNumber||1001));
  add('(PROGRAM : '+st.programName+')');
  add('(POST    : '+C.label+')');
  add('(MACHINE : '+m.name+' / '+m.type+')');
  add('(MATERIAL: '+W.material+')');
  add('(DATE    : '+new Date().toISOString().slice(0,19).replace('T',' ')+')');
  add('(*** VERIFY ALL G-CODE IN A SIMULATOR BEFORE MACHINING ***)');

  if(C.style==='siemens'){
    add('G90 G17 G40 G71');
    add('G75');            // Siemens: reset all modal
    add(m.wcs);
  } else if(C.style==='grbl'){
    add('G17 G21 G90 G94');
    add(m.wcs);
  } else {
    add('G17 G21 G40 G49 G80 G90');
    add(m.wcs);
  }
  if(m.units==='inch'){
    if(C.style==='siemens') add('G70');
    else add('G20');
  }

  st.toolpaths.forEach((tpp,oi)=>{
    const tool=tpp.tool, op=tpp.op, def=OPS[op.type];
    const cut=calcCut(tool, W.material, m);
    const rpm=Math.max(1,Math.round(op.rpm||cut.rpm));
    add('');
    add('(=== OP'+(oi+1)+' : '+def.label+' | T'+tool.num+' Ø'+nf(tool.dia)+' ===)');
    add('(RPM '+rpm+'  FEED '+nf(op.feed||cut.feed)+' mm/min  Vc '+cut.vc+' m/min)');

    // tool change
    if(C.style==='siemens'){
      add('T'+tool.num+' D1 M6 ('+tool.name+')');
    } else if(m.atc && C.atc){
      add('T'+tool.num+' M06 ('+tool.name+')');
    } else {
      add('(MANUAL TOOL CHANGE REQUIRED: T'+tool.num+' '+tool.name+')');
      add('M00');
    }
    add('S'+rpm+' M03');
    if(C.g43) add('G43 H'+tool.num+' Z'+nf(m.safeZ));
    else add('(G43 unsupported by this controller — set tool length manually)');
    if(m.coolant) add('M08');
    add('G90');

    // moves
    tpp.moves.forEach((mv,mi)=>{
      const ref={op:oi,mi};
      if(mv.t==='cycle'){
        emitCycle(mv, C, add, nf, rpm, ref);
        return;
      }
      if(mv.a!==undefined && m.rotary.a.enabled===false){
        // no A axis configured — skip rotary word but warn in validation
      }
      const isArc = mv.t==='G2'||mv.t==='G3';
      let s=mv.t;
      if(mv.x!==undefined) s+=' X'+nf(mv.x);
      if(mv.y!==undefined) s+=' Y'+nf(mv.y);
      if(mv.z!==undefined) s+=' Z'+nf(mv.z);
      if(isArc){
        if(mv.i!==undefined) s+=' I'+nf(mv.i);
        if(mv.j!==undefined) s+=' J'+nf(mv.j);
      }
      if(mv.a!==undefined && m.rotary.a.enabled) s+=' A'+nf(mv.a*m.rotary.a.dir);
      if(mv.b!==undefined && m.rotary.b.enabled) s+=' B'+nf(mv.b*m.rotary.b.dir);
      if(mv.c!==undefined && m.rotary.c.enabled) s+=' C'+nf(mv.c*m.rotary.c.dir);
      if(mv.comp){
        if(mv.comp==='G40') s='G40 '+s;
        else s=mv.comp+' D'+tool.num+' '+s;
      }
      if(mv.f!==undefined && mv.t!=='G0') s+=' F'+nf(mv.f);
      add(s,ref);
    });
    add('M09');
  });

  add('');
  add('(=== PROGRAM END ===)');
  add('M05');
  add('M09');
  if(C.g28){
    add('G91 G28 Z0.');
    add('G28 X0. Y0.');
    add('G90');
  } else {
    add('G0 Z'+nf(m.safeZ));
  }
  add('M30');
  add('%');

  return L;
}

function emitCycle(mv, C, add, nf, rpm, ref){
  const code=mv.code;
  const supported = C.canned && !(code==='G84' && !C.rigidTap);
  if(!supported){ expandCycle(mv, add, nf, ref); return; }
  if(code==='G84' && C.style==='fanuc' && C.rigidTap) add('M29 S'+rpm, ref);
  mv.holes.forEach((h,i)=>{
    let s=(i===0? code+' ':'')+'G98 X'+nf(h.x)+' Y'+nf(h.y)+' Z'+nf(mv.depth)+' R'+nf(mv.r);
    if(mv.q) s+=' Q'+nf(mv.q);
    if(mv.a!==undefined) s+=' A'+nf(mv.a);
    if(i===0) s+=' F'+nf(mv.f);
    add(s, ref);
  });
  add('G80', ref);
}

function expandCycle(mv, add, nf, ref){
  mv.holes.forEach(h=>{
    add('G0 X'+nf(h.x)+' Y'+nf(h.y)+' (hole)', ref);
    add('G0 Z'+nf((mv.r||2)+2), ref);
    const peck = mv.code==='G83' && mv.q ? mv.q : null;
    if(peck){
      let z=mv.r||2;
      while(z>mv.depth){
        const nz=Math.max(mv.depth, z-peck);
        add('G1 Z'+nf(nz)+' F'+nf(mv.f), ref);
        add('G0 Z'+nf(mv.r||2), ref);
        add('G0 Z'+nf(nz+0.5), ref);
        z=nz;
      }
      add('G1 Z'+nf(mv.depth)+' F'+nf(mv.f), ref);
    } else {
      add('G1 Z'+nf(mv.depth)+' F'+nf(mv.f), ref);
    }
    add('G0 Z'+nf((mv.r||2)+2), ref);
  });
}

/* ---------------------------------------------------------- 9. VALIDATION */
function validate(){
  const st=state, m=st.machine, C=CONTROLLERS[m.controller];
  const B=stockBounds(st.workpiece);
  const issues=[];
  const push=(lvl,msg,ref)=>issues.push({lvl,msg,ref:ref||null});

  if(!st.toolpaths.length) push('w','No machining operations defined.');
  if(!st.gcode) push('e','No G-code generated.');

  st.toolpaths.forEach((tpp,oi)=>{
    const tool=tpp.tool, op=tpp.op, def=OPS[op.type];
    if(!tool) { push('e','Operation '+(oi+1)+' has no tool.',{op:oi}); return; }
    if(!TOOL_TYPES[tool.type]) push('e','Unknown tool type on T'+tool.num,{op:oi});

    // RPM / feed limits
    const cut=calcCut(tool, st.workpiece.material, m);
    const rpm=op.rpm||cut.rpm;
    if(rpm>m.maxSpindle) push('e','T'+tool.num+': RPM '+Math.round(rpm)+' exceeds machine max '+m.maxSpindle,{op:oi});
    if(rpm>(tool.maxRpm||99999)) push('e','T'+tool.num+': RPM exceeds tool max '+tool.maxRpm,{op:oi});
    const feed=op.feed||cut.feed;
    if(feed>m.maxFeed) push('e','T'+tool.num+': feed '+feed+' exceeds machine max '+m.maxFeed,{op:oi});

    // controller capability
    if(!C.canned && ['drill','peck','tap','ream','bore'].includes(op.type))
      push('i','OP'+(oi+1)+': '+C.label+' has no canned cycles — drill cycles are expanded to G0/G1.',{op:oi});
    if(op.type==='tap' && !C.rigidTap)
      push('w','OP'+(oi+1)+': rigid tapping (G84/M29) is not supported by '+C.label+' — cycle expanded, verify tap holder.',{op:oi});
    if(op.type==='contour' && (op.dir==='climb'||op.dir==='conv') && !C.comp)
      push('w','OP'+(oi+1)+': cutter compensation G41/G42 not supported by '+C.label+'.',{op:oi});
    if(!m.atc || !C.atc)
      push('i','OP'+(oi+1)+': manual tool change required (M00).',{op:oi});

    // travel & geometry checks
    let minZ=0, maxZ=0;
    tpp.moves.forEach((mv,mi)=>{
      const ref={op:oi,mi};
      if(mv.t==='cycle'){
        mv.holes.forEach(h=>{
          if(Math.abs(h.x)>m.travelX/2) push('e','OP'+(oi+1)+': hole X '+U.r(h.x,2)+' outside X travel.',ref);
          if(Math.abs(h.y)>m.travelY/2) push('e','OP'+(oi+1)+': hole Y '+U.r(h.y,2)+' outside Y travel.',ref);
        });
        if(mv.depth<m.travelZ*-1) push('e','OP'+(oi+1)+': hole Z '+U.r(mv.depth,2)+' exceeds Z travel.',ref);
        return;
      }
      if(mv.x!==undefined && Math.abs(mv.x)>m.travelX/2)
        push('e','OP'+(oi+1)+' move '+(mi+1)+': X='+U.r(mv.x,2)+' outside ±'+(m.travelX/2)+'.',ref);
      if(mv.y!==undefined && Math.abs(mv.y)>m.travelY/2)
        push('e','OP'+(oi+1)+' move '+(mi+1)+': Y='+U.r(mv.y,2)+' outside ±'+(m.travelY/2)+'.',ref);
      if(mv.z!==undefined){
        minZ=Math.min(minZ,mv.z);
        if(mv.z < B.zBot-0.01 && mv.t!=='G0')
          push('e','OP'+(oi+1)+' move '+(mi+1)+': Z='+U.r(mv.z,2)+' below stock bottom ('+U.r(B.zBot,2)+').',ref);
        if(mv.z < -m.travelZ)
          push('e','OP'+(oi+1)+' move '+(mi+1)+': Z exceeds machine Z travel.',ref);
      }
      if(mv.a!==undefined){
        if(!m.rotary.a.enabled) push('e','OP'+(oi+1)+': rotary A word generated but no A axis configured.',ref);
        else if(mv.a<m.rotary.a.min||mv.a>m.rotary.a.max)
          push('e','OP'+(oi+1)+': A='+U.r(mv.a,2)+' outside rotary limits.',ref);
      }
      if((mv.t==='G2'||mv.t==='G3')){
        const r=Math.hypot(mv.i||0,mv.j||0);
        if(r<1e-4) push('e','OP'+(oi+1)+' move '+(mi+1)+': arc with zero radius.',ref);
      }
    });

    // gouge sanity: rapid moves below the top of stock
    tpp.moves.forEach((mv,mi)=>{
      if(mv.t==='G0' && mv.z!==undefined && mv.z<B.zTop-0.001 && mv.z>=B.zBot)
        push('w','OP'+(oi+1)+' move '+(mi+1)+': rapid at Z='+U.r(mv.z,2)+' is inside the stock envelope.',{op:oi,mi});
    });

    if(tpp.warn && tpp.warn.length) tpp.warn.forEach(w=>push('w','OP'+(oi+1)+': '+w,{op:oi}));
  });

  // rotary + gear
  if(state.gear && state.gear.indexing){
    const g=state.gear;
    if(state.machine.type!=='4axis' && state.machine.type!=='5axis' && g.indexing.ratio)
      push('i','Gear module: rotary indexing values are informational only — machine is not configured with a 4th axis.');
  }

  // duplicate tool numbers
  const nums={};
  state.tools.forEach(t=>{ nums[t.num]=(nums[t.num]||0)+1; });
  Object.keys(nums).forEach(k=>{ if(nums[k]>1) push('w','Tool number T'+k+' is used by more than one tool.'); });

  return issues;
}

/* ------------------------------------------------------- 10. BUILD / PIPE */
function rebuild(){
  state.toolpaths=[];
  const st=state;
  st.ops.forEach(op=>{
    const def=OPS[op.type];
    if(!def) return;
    const tool=st.tools.find(t=>t.id===op.toolId) || st.tools[0];
    if(!tool) return;
    // defaults
    Object.keys(def.fields||{}).forEach(()=>{});
    (def.fields||[]).forEach(f=>{ if(op[f.k]===undefined) op[f.k]=f.d; });
    if(op.feed===undefined || op.feed===null){
      op.feed=calcCut(tool, st.workpiece.material, st.machine).feed;
    }
    if(op.rpm===undefined || op.rpm===null){
      op.rpm=calcCut(tool, st.workpiece.material, st.machine).rpm;
    }
    let res;
    try{ res=def.gen(op,st,tool); }
    catch(e){ res={moves:[],warn:['Generation error: '+e.message]}; console.error(e); }
    st.toolpaths.push({op,tool,moves:res.moves||[],warn:res.warn||[]});
  });

  const lines=postProcess();
  st.lineMap=lines;
  st.gcode=lines.map(l=>l.t).join('\n');
  st.issues=validate();

  refreshHeader();
  Viz.rebuild();
  UI.renderIssues();
  UI.renderEditor();
}

function totalPathLen(){
  let feed=0, rapid=0;
  state.toolpaths.forEach(t=>{
    let prev=null;
    t.moves.forEach(mv=>{
      if(mv.t==='cycle') return;
      if(prev){
        const d=Math.hypot((mv.x||0)-(prev.x||0),(mv.y||0)-(prev.y||0),(mv.z||0)-(prev.z||0));
        if(mv.t==='G0') rapid+=d; else feed+=d;
      }
      prev=mv;
    });
  });
  return {feed,rapid};
}

function cycleTime(){
  let t=0;
  const m=state.machine;
  state.toolpaths.forEach(tp=>{
    let prev=null;
    tp.moves.forEach(mv=>{
      if(mv.t==='cycle'){
        const depth=Math.abs(mv.depth-(mv.r||2));
        mv.holes.forEach(()=>{ t += (depth/(mv.f||100))*2 + 3/ (m.rapidFeed/60); });
        return;
      }
      if(prev){
        const d=Math.hypot((mv.x||0)-(prev.x||0),(mv.y||0)-(prev.y||0),(mv.z||0)-(prev.z||0));
        if(mv.t==='G0') t += d/(m.rapidFeed/60);
        else t += d/((mv.f||500)/60);
      }
      prev=mv;
    });
  });
  return t/60;
}

/* ------------------------------------------------------------- 11. VIZ */
const Viz = {
  inited:false, scene:null, camera:null, renderer:null, stock:null, tool:null, holder:null,
  pathLines:null, raf:null, playing:false, segs:[], idx:0, prog:0, speed:8,
  cam:{theta:Math.PI*0.28, phi:Math.PI*0.32, dist:260, target:new THREE.Vector3(0,0,-15)},

  init(){
    if(this.inited || typeof THREE==='undefined') return;
    const canvas=document.getElementById('gl');
    this.renderer=new THREE.WebGLRenderer({canvas,antialias:true});
    this.renderer.setPixelRatio(Math.min(devicePixelRatio,2));
    this.scene=new THREE.Scene();
    this.scene.background=new THREE.Color(0x070a0e);
    this.camera=new THREE.PerspectiveCamera(45,1,0.5,5000);

    this.scene.add(new THREE.AmbientLight(0xffffff,0.55));
    const d1=new THREE.DirectionalLight(0xffffff,0.8); d1.position.set(200,300,200); this.scene.add(d1);
    const d2=new THREE.DirectionalLight(0x88bbff,0.35); d2.position.set(-200,-150,-200); this.scene.add(d2);

    // grid
    const grid=new THREE.GridHelper(600,60,0x1e2a36,0x131b24);
    grid.position.y=-0.01;
    grid.rotation.x=Math.PI/2;   // Z-up display
    this.scene.add(grid);

    // axes
    const mkAxis=(dir,color)=>{
      const g=new THREE.BufferGeometry().setFromPoints([new THREE.Vector3(0,0,0),dir.clone().multiplyScalar(60)]);
      return new THREE.Line(g,new THREE.LineBasicMaterial({color}));
    };
    this.scene.add(mkAxis(new THREE.Vector3(1,0,0),0xff4d5e));
    this.scene.add(mkAxis(new THREE.Vector3(0,1,0),0x25d366));
    this.scene.add(mkAxis(new THREE.Vector3(0,0,1),0x22a8ff));

    // stock
    this.stock=new THREE.Mesh(
      new THREE.BoxGeometry(1,1,1),
      new THREE.MeshPhongMaterial({color:0x7d8b9d,transparent:true,opacity:0.28,
        side:THREE.DoubleSide,depthWrite:false})
    );
    this.scene.add(this.stock);

    // stock wire
    this.stockWire=new THREE.LineSegments(
      new THREE.EdgesGeometry(new THREE.BoxGeometry(1,1,1)),
      new THREE.LineBasicMaterial({color:0x9fb3c8})
    );
    this.scene.add(this.stockWire);

    // tool
    this.tool=new THREE.Mesh(new THREE.CylinderGeometry(1,1,1,24),
      new THREE.MeshPhongMaterial({color:0xffb020}));
    this.scene.add(this.tool);
    this.holder=new THREE.Mesh(new THREE.CylinderGeometry(1,1,1,20),
      new THREE.MeshPhongMaterial({color:0x44546a}));
    this.scene.add(this.holder);

    this.pathLines=new THREE.LineSegments(
      new THREE.BufferGeometry(),
      new THREE.LineBasicMaterial({vertexColors:true,transparent:true,opacity:0.9})
    );
    this.scene.add(this.pathLines);

    this.bindControls(canvas);
    this.inited=true;
    this.resize();
    window.addEventListener('resize',()=>this.resize());
    this.animate();
  },

  bindControls(canvas){
    let drag=null;
    canvas.addEventListener('contextmenu',e=>e.preventDefault());
    canvas.addEventListener('pointerdown',e=>{
      drag={x:e.clientX,y:e.clientY,btn:e.button,shift:e.shiftKey};
      canvas.setPointerCapture(e.pointerId);
    });
    canvas.addEventListener('pointerup',e=>{drag=null;});
    canvas.addEventListener('pointermove',e=>{
      if(!drag) return;
      const dx=e.clientX-drag.x, dy=e.clientY-drag.y;
      drag.x=e.clientX; drag.y=e.clientY;
      if(drag.btn===2 || drag.shift){
        const s=this.cam.dist*0.0016;
        const right=new THREE.Vector3().crossVectors(this.camera.up,this.camera.getWorldDirection(new THREE.Vector3())).normalize();
        this.cam.target.addScaledVector(right,dx*s);
        const up=new THREE.Vector3().crossVectors(this.camera.getWorldDirection(new THREE.Vector3()),right).normalize();
        this.cam.target.addScaledVector(up,dy*s);
      } else {
        this.cam.theta-=dx*0.008;
        this.cam.phi=U.clamp(this.cam.phi-dy*0.008,0.02,Math.PI-0.02);
      }
      this.updateCamera();
    });
    canvas.addEventListener('wheel',e=>{
      e.preventDefault();
      this.cam.dist*= (1+Math.sign(e.deltaY)*0.12);
      this.cam.dist=U.clamp(this.cam.dist,20,3000);
      this.updateCamera();
    },{passive:false});
    document.querySelectorAll('[data-cam]').forEach(b=>{
      b.addEventListener('click',()=>{
        const v=b.dataset.cam;
        if(v==='iso'){ this.cam.theta=Math.PI*0.28; this.cam.phi=Math.PI*0.32; }
        if(v==='top'){ this.cam.theta=0; this.cam.phi=0.03; }
        if(v==='front'){ this.cam.theta=0; this.cam.phi=Math.PI/2; }
        if(v==='side'){ this.cam.theta=Math.PI/2; this.cam.phi=Math.PI/2; }
        this.updateCamera();
      });
    });
    const fit=document.getElementById('btn-fit');
    if(fit) fit.addEventListener('click',()=>this.fit());
  },

  updateCamera(){
    const c=this.cam;
    const x=c.dist*Math.sin(c.phi)*Math.cos(c.theta);
    const y=c.dist*Math.sin(c.phi)*Math.sin(c.theta);
    const z=c.dist*Math.cos(c.phi);
    // Display: Z is up in CAM; we map CAM(x,y,z) -> Three(x, z, -y)
    this.camera.position.set(c.target.x+x, c.target.y+z, c.target.z-y);
    this.camera.up.set(0,1,0);
    this.camera.lookAt(c.target);
  },

  resize(){
    if(!this.inited) return;
    const wrap=document.getElementById('glwrap');
    if(!wrap) return;
    const w=wrap.clientWidth||600, h=wrap.clientHeight||400;
    this.renderer.setSize(w,h,false);
    this.camera.aspect=w/h;
    this.camera.updateProjectionMatrix();
    this.updateCamera();
    this.draw2D();
  },

  fit(){
    const B=stockBounds(state.workpiece);
    const s=Math.max(B.x1-B.x0, B.y1-B.y0, B.zTop-B.zBot);
    this.cam.dist=s*3.0;
    this.cam.target.set(0,0,(B.zTop+B.zBot)/2);
    this.updateCamera();
  },

  rebuild(){
    if(!this.inited) return;
    const w=state.workpiece;
    const B=stockBounds(w);
    const sx=(B.x1-B.x0), sy=(B.y1-B.y0), sz=(B.zTop-B.zBot);
    this.stock.scale.set(sx,sy,sz);
    this.stock.position.set((B.x0+B.x1)/2, (B.zTop+B.zBot)/2, -(B.y0+B.y1)/2);
    this.stockWire.scale.copy(this.stock.scale);
    this.stockWire.position.copy(this.stock.position);

    // toolpath geometry
    const positions=[], colors=[];
    this.segs=[];
    const cRapid=new THREE.Color(0xff7043), cFeed=new THREE.Color(0x25d366),
          cPlunge=new THREE.Color(0x22a8ff);
    state.toolpaths.forEach(tp=>{
      let prev=null, prevA=0;
      tp.moves.forEach(mv=>{
        if(mv.t==='cycle'){
          mv.holes.forEach(h=>{
            const top={x:h.x,y:h.y,z:mv.r||2}, bot={x:h.x,y:h.y,z:mv.depth};
            this.pushSeg(positions,colors,top,bot,cPlunge);
            this.segs.push({a:top,b:bot,rapid:false,f:mv.f||200});
            prev=null;
          });
          return;
        }
        const cur={x:mv.x||0,y:mv.y||0,z:mv.z||0};
        const a = mv.a!==undefined? mv.a : prevA;
        if(prev){
          const col = mv.t==='G0'? cRapid : (Math.abs(cur.z-prev.z)>1e-6 && Math.abs(cur.x-prev.x)<1e-6 && Math.abs(cur.y-prev.y)<1e-6 ? cPlunge : cFeed);
          if(mv.t==='G2'||mv.t==='G3'){
            // approximate arc for display
            const cx=prev.x+(mv.i||0), cy=prev.y+(mv.j||0);
            const r0=Math.hypot(prev.x-cx,prev.y-cy), r1=Math.hypot(cur.x-cx,cur.y-cy);
            let a0=Math.atan2(prev.y-cy,prev.x-cx), a1=Math.atan2(cur.y-cy,cur.x-cx);
            let da=a1-a0;
            if(mv.t==='G2'){ while(da>=0) da-=2*Math.PI; }
            else { while(da<=0) da+=2*Math.PI; }
            const steps=Math.max(4,Math.ceil(Math.abs(da)/0.2));
            let pp=prev;
            for(let i=1;i<=steps;i++){
              const t=i/steps;
              const ang=a0+da*t;
              const rr=r0+(r1-r0)*t;
              const q={x:cx+rr*Math.cos(ang), y:cy+rr*Math.sin(ang), z:prev.z+(cur.z-prev.z)*t};
              this.pushSeg(positions,colors,pp,q,col);
              this.segs.push({a:pp,b:q,rapid:false,f:mv.f||300});
              pp=q;
            }
          } else {
            this.pushSeg(positions,colors,prev,cur,col);
            this.segs.push({a:prev,b:cur,rapid:mv.t==='G0',f:mv.f||(mv.t==='G0'?state.machine.rapidFeed:400),a0:prevA,a1:a});
          }
        }
        prev=cur; prevA=a;
      });
    });

    const g=new THREE.BufferGeometry();
    g.setAttribute('position',new THREE.Float32BufferAttribute(positions,3));
    g.setAttribute('color',new THREE.Float32BufferAttribute(colors,3));
    this.pathLines.geometry.dispose();
    this.pathLines.geometry=g;

    this.idx=0; this.prog=0;
    this.updateTool(this.segs.length? this.segs[0].a : {x:0,y:0,z:state.machine.safeZ});
    this.draw2D();
    this.fit();
  },

  pushSeg(pos,col,p,q,color){
    // CAM (x,y,z) -> three (x, z, -y)
    pos.push(p.x,p.z,-p.y, q.x,q.z,-q.y);
    for(let i=0;i<2;i++) col.push(color.r,color.g,color.b);
  },

  updateTool(p){
    if(!this.inited) return;
    const tool=state.toolpaths.length? state.toolpaths[0].tool : {dia:10};
    const r=Math.max(0.5,(tool.dia||10)/2);
    this.tool.scale.set(r,20,r);
    this.tool.position.set(p.x, p.z-10, -p.y);
    this.holder.scale.set(r*2.2,35,r*2.2);
    this.holder.position.set(p.x, p.z-10-10-17.5, -p.y);
  },

  play(){
    this.playing=true;
    this.lastT=performance.now();
  },
  pause(){ this.playing=false; },
  reset(){ this.idx=0; this.prog=0; this.updateTool(this.segs.length?this.segs[0].a:{x:0,y:0,z:0}); },

  animate(){
    const self=Viz;
    requestAnimationFrame(()=>self.animate());
    if(self.playing && self.segs.length){
      const now=performance.now();
      const dt=Math.min(0.1,(now-(self.lastT||now))/1000);
      self.lastT=now;
      let travel = (self.segs[self.idx] ? (self.segs[self.idx].rapid? state.machine.rapidFeed : self.segs[self.idx].f) : 500) * self.speed * dt;
      while(travel>0 && self.idx<self.segs.length){
        const s=self.segs[self.idx];
        const len=Math.hypot(s.b.x-s.a.x,s.b.y-s.a.y,s.b.z-s.a.z)||1e-6;
        const remain=len*(1-self.prog);
        if(travel>=remain){
          travel-=remain; self.idx++; self.prog=0;
        } else {
          self.prog+=travel/len; travel=0;
        }
      }
      if(self.idx>=self.segs.length){ self.playing=false; self.idx=self.segs.length-1; self.prog=1; }
      const s=self.segs[Math.min(self.idx,self.segs.length-1)];
      if(s){
        const t=self.prog;
        self.updateTool({x:U.lerp(s.a.x,s.b.x,t), y:U.lerp(s.a.y,s.b.y,t), z:U.lerp(s.a.z,s.b.z,t)});
        UI.updateProgress(self.idx/self.segs.length);
      }
    }
    self.renderer.render(self.scene,self.camera);
  },

  draw2D(){
    const cv=document.getElementById('canvas2d');
    if(!cv) return;
    const dpr=Math.min(devicePixelRatio,2);
    const w=cv.clientWidth, h=cv.clientHeight;
    cv.width=w*dpr; cv.height=h*dpr;
    const ctx=cv.getContext('2d');
    ctx.setTransform(dpr,0,0,dpr,0,0);
    ctx.fillStyle='#070a0e'; ctx.fillRect(0,0,w,h);

    const B=stockBounds(state.workpiece);
    const pad=24;
    const sx=(w-pad*2)/Math.max(1,(B.x1-B.x0));
    const sy=(h-pad*2)/Math.max(1,(B.y1-B.y0));
    const s=Math.min(sx,sy);
    const cx=w/2, cy=h/2;
    const px=x=>cx+x*s, py=y=>cy-y*s;

    // stock
    ctx.strokeStyle='#3b4d64'; ctx.lineWidth=1;
    if(state.workpiece.type==='cyl'){
      ctx.beginPath(); ctx.arc(px(0),py(0),(B.r)*s,0,Math.PI*2); ctx.stroke();
    } else {
      ctx.strokeRect(px(B.x0),py(B.y1),(B.x1-B.x0)*s,(B.y1-B.y0)*s);
    }
    // origin
    ctx.strokeStyle='#22a8ff'; ctx.beginPath();
    ctx.moveTo(px(0)-8,py(0)); ctx.lineTo(px(0)+8,py(0));
    ctx.moveTo(px(0),py(0)-8); ctx.lineTo(px(0),py(0)+8); ctx.stroke();

    state.toolpaths.forEach(tp=>{
      let prev=null;
      tp.moves.forEach(mv=>{
        if(mv.t==='cycle'){
          mv.holes.forEach(h=>{
            ctx.fillStyle='#ffb020';
            ctx.beginPath(); ctx.arc(px(h.x),py(h.y),3,0,Math.PI*2); ctx.fill();
          });
          prev=null; return;
        }
        const cur={x:mv.x||0,y:mv.y||0};
        if(prev){
          ctx.strokeStyle = mv.t==='G0' ? 'rgba(255,112,67,0.5)' : '#25d366';
          ctx.lineWidth = mv.t==='G0' ? 0.7 : 1.1;
          ctx.beginPath(); ctx.moveTo(px(prev.x),py(prev.y)); ctx.lineTo(px(cur.x),py(cur.y)); ctx.stroke();
        }
        prev=cur;
      });
    });

    // tool marker
    if(this.segs.length){
      const s2=this.segs[Math.min(this.idx,this.segs.length-1)];
      const t=this.prog;
      const x=U.lerp(s2.a.x,s2.b.x,t), y=U.lerp(s2.a.y,s2.b.y,t);
      ctx.fillStyle='#ffb020';
      ctx.beginPath(); ctx.arc(px(x),py(y),3.5,0,Math.PI*2); ctx.fill();
    }

    ctx.fillStyle='#7c8b9d'; ctx.font='10px monospace';
    ctx.fillText('XY TOP VIEW  (rapid = orange, cut = green)',10,14);
  }
};

/* --------------------------------------------------------------- 12. UI */
const UI = {
  tabs:[
    ['dashboard','Dashboard'],['machine','Machine Setup'],['workpiece','Workpiece'],
    ['tools','Tool Library'],['operations','Operations'],['gear','Gear Design'],
    ['sim','Simulation'],['gcode','G-Code Editor'],['post','Post Processor'],['export','Export']
  ],
  current:'dashboard',

  init(){
    const nav=document.getElementById('tabs');
    nav.innerHTML='';
    this.tabs.forEach(([id,label])=>{
      const b=document.createElement('button');
      b.textContent=label; b.dataset.tab=id;
      b.onclick=()=>UI.show(id);
      nav.appendChild(b);
    });
    this.show('dashboard');
    this.bindEditor();
  },

  show(id){
    this.current=id;
    document.querySelectorAll('#tabs button').forEach(b=>b.classList.toggle('active',b.dataset.tab===id));
    document.querySelectorAll('.view').forEach(v=>v.classList.toggle('active',v.id==='v-'+id));
    const renderers={dashboard:UI.rDashboard, machine:UI.rMachine, workpiece:UI.rWorkpiece,
      tools:UI.rTools, operations:UI.rOperations, gear:UI.rGear, sim:UI.rSim,
      gcode:UI.rGcode, post:UI.rPost, export:UI.rExport};
    (renderers[id]||(()=>{}))();
    if(id==='sim'){ Viz.init(); setTimeout(()=>{Viz.resize();Viz.fit();},60); }
  },

  /* ---------- generic form builder ---------- */
  form(obj, schema, onChange, prefix){
    const wrap=document.createElement('div');
    wrap.className='grid2';
    schema.forEach(f=>{
      const lab=document.createElement('label');
      lab.className='f';
      lab.innerHTML='<span>'+U.esc(f.l||f.k)+'</span>';
      let inp;
      if(f.t==='s'){
        inp=document.createElement('select');
        (f.opts||[]).forEach(([v,t])=>{
          const o=document.createElement('option'); o.value=v; o.textContent=t; inp.appendChild(o);
        });
      } else if(f.t==='c'){
        inp=document.createElement('input'); inp.type='checkbox';
      } else {
        inp=document.createElement('input');
        inp.type = f.t==='t' ? 'text' : 'number';
        if(f.t==='n') inp.step = f.step||'any';
      }
      const key = prefix? prefix+'.'+f.k : f.k;
      const val = prefix? obj[f.k] : obj[f.k];
      if(f.t==='c') inp.checked=!!val; else inp.value = val!==undefined && val!==null ? val : (f.d!==undefined?f.d:'');
      inp.onchange=()=>{
        let v;
        if(f.t==='c') v=inp.checked;
        else if(f.t==='n') v=parseFloat(inp.value)||0;
        else v=inp.value;
        obj[f.k]=v;
        onChange&&onChange(f.k,v);
      };
      if(f.t!=='c') lab.appendChild(inp); else lab.appendChild(inp);
      wrap.appendChild(lab);
    });
    return wrap;
  },

  /* ---------- Dashboard ---------- */
  rDashboard(){
    const v=document.getElementById('v-dashboard');
    const len=totalPathLen();
    const time=cycleTime();
    const errs=state.issues.filter(i=>i.lvl==='e').length;
    const warns=state.issues.filter(i=>i.lvl==='w').length;
    v.innerHTML=`
      <div class="grid2" style="grid-template-columns:1fr 1fr 1fr">
        <div class="panel"><h3>Project</h3>
          <div class="kv">
            <div class="k">Program name</div><div class="v">${U.esc(state.programName)}</div>
            <div class="k">Program number</div><div class="v">O${state.programNumber}</div>
            <div class="k">Machine</div><div class="v">${U.esc(state.machine.name)}</div>
            <div class="k">Machine type</div><div class="v">${state.machine.type}</div>
            <div class="k">Post processor</div><div class="v">${CONTROLLERS[state.machine.controller].label}</div>
            <div class="k">Units</div><div class="v">${state.machine.units}</div>
            <div class="k">WCS</div><div class="v">${state.machine.wcs}</div>
          </div>
        </div>
        <div class="panel"><h3>Workpiece</h3>
          <div class="kv">
            <div class="k">Type</div><div class="v">${state.workpiece.type==='cyl'?'Cylindrical':'Rectangular'}</div>
            <div class="k">Material</div><div class="v">${U.esc(state.workpiece.material)}</div>
            <div class="k">Size</div><div class="v">${state.workpiece.type==='cyl'
              ? 'Ø'+state.workpiece.dia+' × '+state.workpiece.len
              : state.workpiece.w+' × '+state.workpiece.d+' × '+state.workpiece.h}</div>
            <div class="k">Origin</div><div class="v">${state.workpiece.origin}</div>
            <div class="k">Tools in library</div><div class="v">${state.tools.length}</div>
            <div class="k">Operations</div><div class="v">${state.ops.length}</div>
          </div>
        </div>
        <div class="panel"><h3>Program statistics</h3>
          <div class="kv">
            <div class="k">Feed length</div><div class="v">${U.r(len.feed/1000,2)} m</div>
            <div class="k">Rapid length</div><div class="v">${U.r(len.rapid/1000,2)} m</div>
            <div class="k">Est. cycle time</div><div class="v">${U.r(time,2)} min</div>
            <div class="k">G-code lines</div><div class="v">${state.lineMap.length}</div>
            <div class="k">Errors</div><div class="v" style="color:var(--err)">${errs}</div>
            <div class="k">Warnings</div><div class="v" style="color:var(--warn)">${warns}</div>
          </div>
        </div>
      </div>
      <div class="panel"><h3>Quick start — sample projects</h3>
        <div class="row">
          <button class="btn primary" data-sample="plate">Aluminium Plate — Face + Pocket + Drill + Contour</button>
          <button class="btn" data-sample="gear">Spur Gear — 20T Module 2 (profile milling)</button>
          <button class="btn" data-sample="surface">3D Dome Surface — Ball nose raster</button>
          <button class="btn" data-sample="rotary">4-Axis Wrapped Contour</button>
        </div>
        <div class="hint" style="margin-top:8px">
          Each sample replaces the current operations and workpiece. Generated G-code is a starting point —
          always verify in a simulator and check your specific machine before cutting metal.
        </div>
      </div>
      <div class="panel"><h3>Workflow</h3>
        <div class="hint">
          1 · <b>Machine Setup</b> — travels, spindle limits, rotary axes, controller &nbsp;→&nbsp;
          2 · <b>Workpiece</b> — stock size, material, origin &nbsp;→&nbsp;
          3 · <b>Tool Library</b> — define cutters (Vc / fz drive the feeds &amp; speeds) &nbsp;→&nbsp;
          4 · <b>Operations</b> — add and sequence machining operations &nbsp;→&nbsp;
          5 · <b>Gear Design</b> (optional) — generate gear geometry &amp; indexing &nbsp;→&nbsp;
          6 · <b>Simulation</b> — review toolpaths in 3D/2D &nbsp;→&nbsp;
          7 · <b>G-Code Editor</b> — inspect and edit &nbsp;→&nbsp;
          8 · <b>Post Processor</b> — choose the controller dialect &nbsp;→&nbsp;
          9 · <b>Export</b> — download .nc / .txt / .tap / .gcode
        </div>
      </div>`;
    v.querySelectorAll('[data-sample]').forEach(b=>b.onclick=()=>UI.loadSample(b.dataset.sample));
  },

  loadSample(kind){
    const t=state.tools;
    if(kind==='plate'){
      state.workpiece={type:'rect',w:120,d:80,h:25,origin:'top-center',material:'Aluminium',clamping:'vise'};
      state.ops=[
        {id:U.uid(),type:'face',toolId:t[0].id,stepover:70,doc:1.5,stock:1.5,dir:'x',lead:5},
        {id:U.uid(),type:'pocketRect',toolId:t[1].id,cx:0,cy:0,w:60,h:40,depth:8,doc:2,stepover:60,finish:0.2},
        {id:U.uid(),type:'drill',toolId:t[3].id,pattern:'circle',cx:0,cy:0,bcd:90,nHoles:6,startAngle:0,depth:12,r:2},
        {id:U.uid(),type:'contour',toolId:t[1].id,shape:'rect',cx:0,cy:0,w:110,h:70,depth:25,doc:3,finish:0.2,dir:'climb'}
      ];
    } else if(kind==='gear'){
      const g=Gear.calc(Object.assign({},Gear.params,{type:'spur',module:2,teeth:20,faceWidth:10}));
      state.gear=g;
      const poly=g.profile;
      state.workpiece={type:'rect',w:70,d:70,h:12,origin:'top-center',material:'Mild Steel',clamping:'vise'};
      state.ops=[
        {id:U.uid(),type:'face',toolId:t[0].id,stepover:70,doc:1,stock:1,dir:'x',lead:4},
        {id:U.uid(),type:'contour',toolId:t[2].id,shape:'poly',polygon:poly,cx:0,cy:0,depth:10,doc:0.8,finish:0.1,dir:'none'}
      ];
    } else if(kind==='surface'){
      state.workpiece={type:'rect',w:110,d:70,h:40,origin:'top-center',material:'Aluminium',clamping:'vise'};
      state.ops=[
        {id:U.uid(),type:'face',toolId:t[0].id,stepover:70,doc:1.5,stock:1,dir:'x',lead:5},
        {id:U.uid(),type:'surface3d',toolId:t[2].id,surface:'dome',x0:-45,x1:45,y0:-25,y1:25,stepover:0.8}
      ];
    } else if(kind==='rotary'){
      state.machine.type='4axis';
      state.machine.rotary.a.enabled=true;
      state.workpiece={type:'cyl',dia:50,len:100,origin:'top-center',material:'Aluminium',clamping:'4th axis chuck'};
      state.ops=[
        {id:U.uid(),type:'wrap',toolId:t[2].id,radius:25,dia:40,depth:1.5,doc:0.5}
      ];
    }
    state.ops.forEach(op=>{ op.feed=null; op.rpm=null; });
    rebuild();
    UI.show('operations');
    UI.status('Sample loaded: '+kind,'ok');
  },

  /* ---------- Machine ---------- */
  rMachine(){
    const v=document.getElementById('v-machine');
    const m=state.machine;
    v.innerHTML=`
      <div class="panel"><h3>Machine configuration</h3><div id="mach-form"></div></div>
      <div class="panel"><h3>Rotary axes</h3><div id="rot-form"></div>
        <div class="hint" style="margin-top:8px">
          Rotary ratios apply to manual dividing heads and to the indexing table in the Gear module.
          CNC A/B/C axes are programmed directly in degrees.
        </div>
      </div>
      <div class="panel"><h3>Tool changer</h3><div id="atc-form"></div></div>`;

    const mf=[
      {k:'name',l:'Machine name',t:'t'},
      {k:'type',l:'Machine type',t:'s',opts:[['2.5axis','2.5-Axis CNC Milling'],['3axis','3-Axis CNC Milling'],
        ['4axis','4-Axis CNC Milling'],['5axis','5-Axis CNC Milling']]},
      {k:'travelX',l:'X travel (mm)',t:'n'},{k:'travelY',l:'Y travel (mm)',t:'n'},
      {k:'travelZ',l:'Z travel (mm)',t:'n'},
      {k:'maxSpindle',l:'Max spindle RPM',t:'n'},
      {k:'maxFeed',l:'Max feed (mm/min)',t:'n'},
      {k:'rapidFeed',l:'Rapid speed (mm/min)',t:'n'},
      {k:'safeZ',l:'Safe Z clearance (mm)',t:'n'},
      {k:'wcs',l:'Work coordinate system',t:'s',opts:[['G54','G54'],['G55','G55'],['G56','G56'],['G57','G57'],['G58','G58'],['G59','G59']]},
      {k:'units',l:'Units',t:'s',opts:[['mm','Metric (mm)'],['inch','Inch']]},
      {k:'positioning',l:'Positioning',t:'s',opts:[['absolute','Absolute (G90)'],['incremental','Incremental (G91)']]},
      {k:'controller',l:'Controller',t:'s',opts:Object.keys(CONTROLLERS).map(k=>[k,CONTROLLERS[k].label])}
    ];
    document.getElementById('mach-form').appendChild(
      UI.form(m, mf, (k)=>{ if(k==='type') UI.syncRotary(); rebuild(); })
    );

    UI.renderRotary();
    const atc=[
      {k:'atc',l:'Automatic tool changer present',t:'c'},
      {k:'coolant',l:'Flood coolant (M08)',t:'c'}
    ];
    document.getElementById('atc-form').appendChild(UI.form(m,atc,()=>rebuild()));
  },

  syncRotary(){
    const t=state.machine.type;
    state.machine.rotary.a.enabled = (t==='4axis'||t==='5axis');
    state.machine.rotary.b.enabled = (t==='5axis');
    state.machine.rotary.c.enabled = (t==='5axis');
  },

  renderRotary(){
    const el=document.getElementById('rot-form');
    if(!el) return;
    el.innerHTML='';
    ['a','b','c'].forEach(ax=>{
      const r=state.machine.rotary[ax];
      const box=document.createElement('div');
      box.className='panel';
      box.style.marginBottom='8px';
      box.innerHTML='<h3 style="margin-bottom:6px">'+ax.toUpperCase()+' axis</h3>';
      box.appendChild(UI.form(r,[
        {k:'enabled',l:'Enabled',t:'c'},
        {k:'min',l:'Min angle (°)',t:'n'},
        {k:'max',l:'Max angle (°)',t:'n'},
        {k:'ratio',l:'Table ratio (e.g. 40)',t:'n'},
        {k:'dir',l:'Direction (+1/-1)',t:'n'}
      ],()=>{rebuild();UI.renderRotary();}));
      el.appendChild(box);
    });
  },

  /* ---------- Workpiece ---------- */
  rWorkpiece(){
    const v=document.getElementById('v-workpiece');
    const w=state.workpiece;
    v.innerHTML=`<div class="panel"><h3>Workpiece configuration</h3><div id="wp-form"></div></div>
                 <div class="panel"><h3>Stock bounds (work coordinates)</h3><div id="wp-bounds"></div></div>`;
    const fields=[
      {k:'type',l:'Stock type',t:'s',opts:[['rect','Rectangular block'],['cyl','Cylindrical bar']]},
      {k:'material',l:'Material',t:'s',opts:Object.keys(MATERIALS).map(k=>[k,k])},
      {k:'w',l:'X length (mm)',t:'n'},{k:'d',l:'Y width (mm)',t:'n'},{k:'h',l:'Z height (mm)',t:'n'},
      {k:'dia',l:'Diameter (mm)',t:'n'},{k:'len',l:'Length (mm)',t:'n'},
      {k:'origin',l:'Origin',t:'s',opts:[['top-center','Top centre of stock'],['top-left','Top front-left corner']]},
      {k:'clamping',l:'Clamping',t:'s',opts:[['vise','Vise'],['chuck','Chuck / 4th axis'],['fixture','Fixture plate'],['clamps','Clamps']]}
    ];
    document.getElementById('wp-form').appendChild(UI.form(w,fields,()=>{rebuild();UI.rWorkpiece();}));
    const B=stockBounds(w);
    document.getElementById('wp-bounds').innerHTML=
      `<div class="kv">
        <div class="k">X range</div><div class="v">${U.r(B.x0,2)} … ${U.r(B.x1,2)}</div>
        <div class="k">Y range</div><div class="v">${U.r(B.y0,2)} … ${U.r(B.y1,2)}</div>
        <div class="k">Z range</div><div class="v">${U.r(B.zBot,2)} … ${U.r(B.zTop,2)}</div>
        <div class="k">Material cutting data</div><div class="v">
          Vc ${MATERIALS[w.material].vc.Carbide} m/min (carbide) · ${MATERIALS[w.material].vc.HSS} m/min (HSS)</div>
      </div>`;
  },

  /* ---------- Tools ---------- */
  rTools(){
    const v=document.getElementById('v-tools');
    v.innerHTML=`
      <div class="panel"><h3>Tool library</h3>
        <div class="scroll"><table id="tool-table"></table></div>
        <div class="row" style="margin-top:8px">
          <button class="btn primary" id="btn-add-tool">+ Add tool</button>
        </div>
      </div>
      <div class="panel"><h3 id="tool-edit-title">Tool editor</h3><div id="tool-edit"></div></div>`;

    UI.renderToolTable();
    document.getElementById('btn-add-tool').onclick=()=>{
      const t={id:U.uid(),num:(Math.max(0,...state.tools.map(x=>x.num))+1),name:'New Tool',
        type:'flat',dia:10,r:0,flutes:3,fluteLen:25,oal:70,mat:'Carbide',coat:'TiAlN',
        holder:10,vc:0,fz:0,maxRpm:12000};
      state.tools.push(t); UI.editTool(t); UI.renderToolTable(); rebuild();
    };
    if(state.tools[0]) UI.editTool(state.tools[0]);
  },

  renderToolTable(){
    const tb=document.getElementById('tool-table');
    if(!tb) return;
    tb.innerHTML=`<tr><th>T</th><th>Name</th><th>Type</th><th>Ø</th><th>Flutes</th>
      <th>RPM</th><th>Feed</th><th></th></tr>`+
      state.tools.map(t=>{
        const c=calcCut(t,state.workpiece.material,state.machine);
        return `<tr>
          <td><b>T${t.num}</b></td><td>${U.esc(t.name)}</td>
          <td>${TOOL_TYPES[t.type]?TOOL_TYPES[t.type].label:t.type}</td>
          <td>${t.dia}</td><td>${t.flutes||'-'}</td>
          <td>${c.rpm}${c.limited?' ⚠':''}</td><td>${c.feed}</td>
          <td><button class="btn sm" data-edit="${t.id}">Edit</button>
              <button class="btn sm danger" data-del="${t.id}">×</button></td>
        </tr>`;
      }).join('');
    tb.querySelectorAll('[data-edit]').forEach(b=>b.onclick=()=>{
      UI.editTool(state.tools.find(t=>t.id===b.dataset.edit)); });
    tb.querySelectorAll('[data-del]').forEach(b=>b.onclick=()=>{
      state.tools=state.tools.filter(t=>t.id!==b.dataset.del);
      state.ops=state.ops.filter(o=>o.toolId!==b.dataset.del);
      UI.renderToolTable(); rebuild(); });
  },

  editTool(t){
    if(!t) return;
    const el=document.getElementById('tool-edit');
    if(!el) return;
    el.innerHTML='';
    document.getElementById('tool-edit-title').textContent='Tool editor — T'+t.num+' '+t.name;
    const f1=[{k:'num',l:'Tool number',t:'n'},{k:'name',l:'Name',t:'t'},
      {k:'type',l:'Type',t:'s',opts:Object.keys(TOOL_TYPES).map(k=>[k,TOOL_TYPES[k].label])},
      {k:'dia',l:'Diameter (mm)',t:'n'},{k:'r',l:'Corner radius (mm)',t:'n'},
      {k:'flutes',l:'Number of flutes',t:'n'},
      {k:'fluteLen',l:'Cutting length (mm)',t:'n'},{k:'oal',l:'Overall length (mm)',t:'n'},
      {k:'mat',l:'Tool material',t:'s',opts:[['Carbide','Carbide'],['HSS','HSS'],['HSS-Co','HSS-Co'],['CBN','CBN'],['Ceramic','Ceramic']]},
      {k:'coat',l:'Coating',t:'s',opts:[['None','None'],['TiN','TiN'],['TiAlN','TiAlN'],['AlCrN','AlCrN'],['DLC','DLC']]},
      {k:'holder',l:'Holder Ø (mm)',t:'n'},
      {k:'vc',l:'Cutting speed Vc (m/min) — 0=auto',t:'n'},
      {k:'fz',l:'Feed per tooth (mm) — 0=auto',t:'n'},
      {k:'maxRpm',l:'Tool max RPM',t:'n'}];
    el.appendChild(UI.form(t,f1,()=>{UI.renderToolTable();rebuild();}));
    const c=calcCut(t,state.workpiece.material,state.machine);
    const info=document.createElement('div');
    info.className='panel';
    info.innerHTML=`<h3>Calculated cutting data — ${state.workpiece.material}</h3>
      <div class="kv">
        <div class="k">Spindle speed (RPM = 1000·Vc / (π·D))</div><div class="v">${c.rpm} rpm${c.limited?' (limited)':''}</div>
        <div class="k">Theoretical RPM</div><div class="v">${c.rpmCalc}</div>
        <div class="k">Feed rate (F = RPM · z · fz)</div><div class="v">${c.feed} mm/min</div>
        <div class="k">Cutting speed used</div><div class="v">${c.vc} m/min</div>
        <div class="k">Feed per tooth used</div><div class="v">${c.fz} mm</div>
      </div>`;
    el.appendChild(info);
  },

  /* ---------- Operations ---------- */
  rOperations(){
    const v=document.getElementById('v-operations');
    v.innerHTML=`
      <div class="panel"><h3>Machining operations</h3><div id="op-list"></div></div>
      <div class="panel"><h3>Add / edit operation</h3>
        <div class="row" style="margin-bottom:10px">
          <label class="f" style="min-width:260px"><span>Operation type</span>
            <select id="op-type">${Object.keys(OPS).map(k=>
              `<option value="${k}">${OPS[k].label}</option>`).join('')}</select></label>
          <label class="f" style="min-width:220px"><span>Tool</span>
            <select id="op-tool">${state.tools.map(t=>
              `<option value="${t.id}">T${t.num} — ${U.esc(t.name)}</option>`).join('')}</select></label>
          <button class="btn primary" id="op-add">Add operation</button>
        </div>
        <div id="op-form"></div>
      </div>`;
    UI.renderOpList();
    const selType=document.getElementById('op-type');
    const renderForm=(op)=>{
      const el=document.getElementById('op-form');
      el.innerHTML='';
      const def=OPS[selType.value];
      const draft=op||{id:U.uid(),type:selType.value,toolId:document.getElementById('op-tool').value,
                       feed:null,rpm:null};
      def.fields.forEach(f=>{ if(draft[f.k]===undefined) draft[f.k]=f.d; });
      el.appendChild(UI.form(draft,def.fields,()=>{}));
      const row=document.createElement('div');
      row.className='row';
      row.style.marginTop='10px';
      row.innerHTML=`<button class="btn primary" id="op-save">${op?'Update':'Add'} operation</button>
        <span class="hint">Feeds &amp; speeds are computed from the tool and material unless overridden.</span>`;
      el.appendChild(row);
      row.querySelector('#op-save').onclick=()=>{
        draft.type=selType.value;
        draft.toolId=document.getElementById('op-tool').value;
        if(!draft.feed) draft.feed=null;
        if(!draft.rpm) draft.rpm=null;
        if(op){
          const i=state.ops.findIndex(o=>o.id===op.id);
          state.ops[i]=draft;
        } else state.ops.push(draft);
        rebuild(); UI.renderOpList();
        UI.status('Operation saved','ok');
      };
    };
    selType.onchange=()=>renderForm(null);
    document.getElementById('op-add').onclick=()=>renderForm(null);
    renderForm(null);
  },

  renderOpList(){
    const el=document.getElementById('op-list');
    if(!el) return;
    if(!state.ops.length){ el.innerHTML='<div class="hint">No operations yet. Add one below or load a sample project from the Dashboard.</div>'; return; }
    el.innerHTML=state.ops.map((op,i)=>{
      const tool=state.tools.find(t=>t.id===op.toolId);
      const c=tool?calcCut(tool,state.workpiece.material,state.machine):{rpm:0,feed:0};
      return `<div class="opcard">
        <span class="chip">OP${i+1}</span>
        <div><div class="nm">${OPS[op.type].label}</div>
        <div class="sub">T${tool?tool.num:'?'} ${tool?U.esc(tool.name):'—'} ·
          S${op.rpm||c.rpm} · F${op.feed||c.feed} ·
          depth ${op.depth!==undefined?op.depth:'—'} mm</div></div>
        <div class="spacer"></div>
        <button class="btn sm" data-up="${i}">↑</button>
        <button class="btn sm" data-down="${i}">↓</button>
        <button class="btn sm danger" data-rm="${i}">×</button>
      </div>`;
    }).join('');
    el.querySelectorAll('[data-rm]').forEach(b=>b.onclick=()=>{
      state.ops.splice(+b.dataset.rm,1); rebuild(); UI.renderOpList(); });
    el.querySelectorAll('[data-up]').forEach(b=>b.onclick=()=>{
      const i=+b.dataset.up; if(i>0){[state.ops[i-1],state.ops[i]]=[state.ops[i],state.ops[i-1]];rebuild();UI.renderOpList();} });
    el.querySelectorAll('[data-down]').forEach(b=>b.onclick=()=>{
      const i=+b.dataset.down; if(i<state.ops.length-1){[state.ops[i+1],state.ops[i]]=[state.ops[i],state.ops[i+1]];rebuild();UI.renderOpList();} });
  },

  /* ---------- Gear ---------- */
  rGear(){
    const v=document.getElementById('v-gear');
    const p=Gear.params;
    v.innerHTML=`
      <div class="panel"><h3>Gear parameters</h3><div id="gear-form"></div>
        <div class="row" style="margin-top:10px">
          <button class="btn primary" id="gear-calc">Calculate</button>
          <button class="btn" id="gear-op">Create profile milling operation</button>
          <button class="btn" id="gear-index">Create indexed 4-axis program</button>
        </div>
      </div>
      <div class="panel"><h3>Calculated geometry</h3><div id="gear-out" class="hint">Press Calculate.</div></div>
      <div class="panel"><h3>Rotary indexing table</h3><div id="gear-index-out" class="hint">—</div></div>
      <div class="panel"><h3>Unsupported / restricted features</h3>
        <div class="hint">${Object.entries(UNSUPPORTED).map(([k,val])=>`<div style="margin-bottom:6px"><b>${k}</b> — ${val}</div>`).join('')}</div>
      </div>`;

    const fields=[
      {k:'type',l:'Gear type',t:'s',opts:[
        ['spur','Spur gear'],['helical','Helical gear'],['bevel','Straight bevel gear'],
        ['spiralbevel','Spiral bevel gear (unsupported)'],['worm','Worm shaft'],
        ['wormwheel','Worm wheel'],['sprocket','Sprocket'],['rack','Gear rack']]},
      {k:'module',l:'Module m (mm)',t:'n'},{k:'teeth',l:'Number of teeth z',t:'n'},
      {k:'mateTeeth',l:'Mating teeth z₂',t:'n'},
      {k:'pressureAngle',l:'Pressure angle (°)',t:'n'},
      {k:'helixAngle',l:'Helix angle β (°)',t:'n'},
      {k:'faceWidth',l:'Face width b (mm)',t:'n'},
      {k:'backlash',l:'Backlash (mm)',t:'n'},
      {k:'profileShift',l:'Profile shift x',t:'n'},
      {k:'starts',l:'Worm starts z₁',t:'n'},
      {k:'chainPitch',l:'Chain pitch (mm)',t:'n'},
      {k:'rollerDia',l:'Roller Ø (mm)',t:'n'},
      {k:'bore',l:'Bore Ø (mm)',t:'n'},
      {k:'rotaryRatio',l:'Rotary table ratio',t:'n'},
      {k:'hand',l:'Helix hand',t:'s',opts:[['right','Right'],['left','Left']]}
    ];
    document.getElementById('gear-form').appendChild(UI.form(p,fields,()=>{}));

    const doCalc=()=>{
      const g=Gear.calc(p);
      state.gear=g;
      const out=document.getElementById('gear-out');
      const rows=Object.entries(g).filter(([k,v])=>typeof v!=='object' && k!=='warnings');
      out.innerHTML=`<div class="kv">${rows.map(([k,val])=>
        `<div class="k">${k.replace(/([A-Z])/g,' $1').replace(/^./,c=>c.toUpperCase())}</div>
         <div class="v">${typeof val==='number'?U.r(val,3):val}</div>`).join('')}</div>
        ${g.warnings.length?`<div class="warnbox" style="margin-top:10px">${g.warnings.join('<br>')}</div>`:''}`;
      const ix=g.indexing;
      document.getElementById('gear-index-out').innerHTML=
        `<div class="kv">
          <div class="k">Rotary table ratio</div><div class="v">${ix.ratio}:1</div>
          <div class="k">Index per tooth</div><div class="v">${U.r(ix.indexDeg,4)}°</div>
          <div class="k">Handwheel turns per tooth</div><div class="v">${ix.handwheelTurns}</div>
          <div class="k">A-axis G-code</div><div class="v">A${U.r(ix.indexDeg,4)} per index</div>
        </div>
        <div class="hint" style="margin-top:8px">
          Indexing: A = n × ${U.r(ix.indexDeg,4)}° for n = 0…${p.teeth-1}.
          With a ${ix.ratio}:1 table, each index is ${ix.handwheelTurns} handwheel revolutions.
        </div>`;
      UI.status('Gear geometry calculated','ok');
    };
    document.getElementById('gear-calc').onclick=doCalc;

    document.getElementById('gear-op').onclick=()=>{
      if(!state.gear || !state.gear.profile){ UI.status('Calculate the gear first (and check it is supported).','warn'); return; }
      const op=Gear.toContourOp(p,state.gear);
      if(!op){ UI.status('No profile available for this gear type.','err'); return; }
      op.toolId=state.tools.find(t=>t.type==='flat') ? state.tools.find(t=>t.type==='flat').id : state.tools[0].id;
      op.feed=null; op.rpm=null;
      state.ops.push(op);
      rebuild();
      UI.status('Gear profile operation added','ok');
      UI.show('operations');
    };

    document.getElementById('gear-index').onclick=()=>{
      if(!state.gear || !state.gear.indexing){ doCalc(); }
      const g=state.gear;
      const op={
        id:U.uid(),type:'indexed4',toolId:state.tools.find(t=>t.type==='flat')?state.tools.find(t=>t.type==='flat').id:state.tools[0].id,
        indexes:p.teeth, radius:p.module*p.teeth/2, x0:0, holesPerIndex:1, spacing:0,
        depth:p.faceWidth||10, feed:null, rpm:null
      };
      state.machine.type='4axis'; state.machine.rotary.a.enabled=true;
      state.ops.push(op);
      rebuild();
      UI.status('Indexed 4-axis operation added (A indexes '+p.teeth+' times)','ok');
      UI.show('operations');
    };
  },

  /* ---------- Simulation ---------- */
  rSim(){
    const el=document.getElementById('sim-side');
    el.innerHTML=`
      <div class="panel"><h3>Simulation</h3>
        <div class="row">
          <button class="btn primary" id="sim-play">▶ Play</button>
          <button class="btn" id="sim-pause">⏸ Pause</button>
          <button class="btn" id="sim-reset">⟲ Reset</button>
        </div>
        <label class="f" style="margin-top:10px"><span>Simulation speed ×<b id="sim-speed-v">8</b></span>
          <input type="range" id="sim-speed" min="1" max="60" value="8"></label>
        <div class="hint" id="sim-progress">Progress 0%</div>
      </div>
      <div class="panel"><h3>Toolpath summary</h3><div id="sim-stats"></div></div>
      <div class="panel"><h3>Operations</h3><div id="sim-ops" class="hint"></div></div>`;
    const len=totalPathLen();
    document.getElementById('sim-stats').innerHTML=`
      <div class="kv">
        <div class="k">Feed moves</div><div class="v">${U.r(len.feed/1000,2)} m</div>
        <div class="k">Rapid moves</div><div class="v">${U.r(len.rapid/1000,2)} m</div>
        <div class="k">Estimated cycle time</div><div class="v">${U.r(cycleTime(),2)} min</div>
        <div class="k">Move count</div><div class="v">${Viz.segs.length}</div>
      </div>`;
    document.getElementById('sim-ops').innerHTML=state.toolpaths.map((t,i)=>
      `<div>OP${i+1} · ${OPS[t.op.type].label} · T${t.tool.num} · ${t.moves.length} moves</div>`).join('')
      ||'<div>No operations.</div>';
    document.getElementById('sim-play').onclick=()=>Viz.play();
    document.getElementById('sim-pause').onclick=()=>Viz.pause();
    document.getElementById('sim-reset').onclick=()=>Viz.reset();
    document.getElementById('sim-speed').oninput=(e)=>{
      Viz.speed=+e.target.value;
      document.getElementById('sim-speed-v').textContent=e.target.value;
    };
  },

  updateProgress(p){
    const el=document.getElementById('sim-progress');
    if(el) el.textContent='Progress '+Math.round(p*100)+'%';
  },

  /* ---------- G-Code editor ---------- */
  rGcode(){
    const el=document.getElementById('gcode-side');
    const errs=state.issues.filter(i=>i.lvl==='e').length;
    const warns=state.issues.filter(i=>i.lvl==='w').length;
    el.innerHTML=`
      <div class="panel"><h3>Program</h3>
        <div class="kv">
          <div class="k">Lines</div><div class="v">${state.lineMap.length}</div>
          <div class="k">Errors</div><div class="v" style="color:var(--err)">${errs}</div>
          <div class="k">Warnings</div><div class="v" style="color:var(--warn)">${warns}</div>
        </div>
        <div class="row" style="margin-top:10px">
          <button class="btn" id="gc-format">Format</button>
          <button class="btn" id="gc-find">Find…</button>
          <button class="btn" id="gc-copy">Copy</button>
        </div>
      </div>
      <div class="panel"><h3>Validation report</h3><div id="issue-list" class="scroll"></div></div>`;
    document.getElementById('gc-format').onclick=()=>{
      const ta=document.getElementById('gcode-ta');
      ta.value=ta.value.split('\n').map(l=>l.trim()).filter(l=>l.length).join('\n');
      UI.highlight();
      UI.status('Formatted','ok');
    };
    document.getElementById('gc-find').onclick=()=>{
      const q=prompt('Find (text or /regex/):');
      if(!q) return;
      const ta=document.getElementById('gcode-ta');
      let re;
      try{ re = (q.startsWith('/')&&q.endsWith('/')) ? new RegExp(q.slice(1,-1),'g') : new RegExp(q.replace(/[.*+?^${}()|[\]\\]/g,'\\$&'),'g'); }
      catch(e){ return; }
      const m=re.exec(ta.value);
      if(m){ ta.focus(); ta.setSelectionRange(m.index,m.index+m[0].length); UI.status('Found','ok'); }
      else UI.status('Not found','warn');
    };
    document.getElementById('gc-copy').onclick=()=>{
      navigator.clipboard.writeText(document.getElementById('gcode-ta').value)
        .then(()=>UI.status('Copied to clipboard','ok'))
        .catch(()=>UI.status('Clipboard unavailable','err'));
    };
    UI.renderIssues();
    UI.renderEditor();
  },

  bindEditor(){
    const ta=document.getElementById('gcode-ta');
    const hl=document.getElementById('gcode-hl');
    ta.addEventListener('input',()=>UI.highlight());
    ta.addEventListener('scroll',()=>{
      hl.scrollTop=ta.scrollTop; hl.scrollLeft=ta.scrollLeft;
    });
  },

  renderEditor(){
    const ta=document.getElementById('gcode-ta');
    const hl=document.getElementById('gcode-hl');
    if(!ta) return;
    if(document.activeElement!==ta || !ta.value) ta.value=state.gcode;
    UI.highlight();
  },

  highlight(){
    const ta=document.getElementById('gcode-ta');
    const hl=document.getElementById('gcode-hl');
    if(!ta||!hl) return;
    const src=ta.value||'';
    hl.innerHTML=src.split('\n').map(line=>{
      let code=line, comment='';
      const ci=code.indexOf('(');
      if(ci>=0){ comment=code.slice(ci); code=code.slice(0,ci); }
      let s=U.esc(code).replace(/([A-Za-z])(-?\d*\.?\d+)/g,(m,L,N)=>{
        const u=L.toUpperCase();
        if(u==='G') return '<span class="g">'+m+'</span>';
        if(u==='M') return '<span class="m">'+m+'</span>';
        if(u==='F'||u==='S') return '<span class="fs">'+m+'</span>';
        return '<span class="ax">'+m+'</span>';
      });
      if(comment) s+='<span class="c">'+U.esc(comment)+'</span>';
      return s;
    }).join('\n');
  },

  renderIssues(){
    const el=document.getElementById('issue-list');
    if(!el) return;
    if(!state.issues.length){ el.innerHTML='<div class="hint">No issues detected.</div>'; return; }
    el.innerHTML=state.issues.map(is=>{
      const ln = is.ref && state.lineMap ? findLine(is.ref) : null;
      return `<div class="issue ${is.lvl}">
        <span class="ln">${ln?'L'+ln:'—'}</span>
        <span>${U.esc(is.msg)}</span></div>`;
    }).join('');
  },

  /* ---------- Post ---------- */
  rPost(){
    const v=document.getElementById('v-post');
    const m=state.machine;
    v.innerHTML=`
      <div class="panel"><h3>Controller / post processor</h3>
        <label class="f"><span>Controller</span>
          <select id="post-sel">${Object.keys(CONTROLLERS).map(k=>
            `<option value="${k}" ${k===m.controller?'selected':''}>${CONTROLLERS[k].label}</option>`).join('')}
          </select></label>
        <div id="post-caps" style="margin-top:12px"></div>
      </div>
      <div class="panel"><h3>Program header</h3>
        <label class="f"><span>Program name</span><input id="p-name" value="${U.esc(state.programName)}"></label>
        <label class="f" style="margin-top:8px"><span>Program number (O-word)</span>
          <input id="p-num" type="number" value="${state.programNumber}"></label>
      </div>
      <div class="panel"><h3>Notes on post-processor accuracy</h3>
        <div class="hint">
          Each controller dialect is emitted from a capability table. Differences that are handled:
          <ul style="margin:6px 0 0 16px;padding:0">
            <li>FANUC / Haas / Syntec / Mach3 — G43 tool length, G98 canned cycles, M29 rigid tapping.</li>
            <li>GRBL — no canned cycles (expanded to G0/G1), no G43, no M06 (M00 manual change).</li>
            <li>Siemens — G71 metric, T…D1 M6 tool change, G75 modal reset.</li>
          </ul>
          Machine-specific kinematics (RTCP, pivot offsets, rotary sign conventions) are the
          responsibility of the machine integrator. Always dry-run the first part.
        </div>
      </div>`;
    const sel=document.getElementById('post-sel');
    const caps=()=>{
      const C=CONTROLLERS[sel.value];
      document.getElementById('post-caps').innerHTML=`<div class="kv">
        <div class="k">Canned cycles</div><div class="v">${C.canned?'Yes':'No (expanded)'}</div>
        <div class="k">Cutter compensation</div><div class="v">${C.comp?'Yes':'No'}</div>
        <div class="k">Rigid tapping</div><div class="v">${C.rigidTap?'Yes':'No'}</div>
        <div class="k">Automatic tool change</div><div class="v">${C.atc?'Yes':'No'}</div>
        <div class="k">G43 tool length</div><div class="v">${C.g43?'Yes':'No'}</div>
        <div class="k">G28 home</div><div class="v">${C.g28?'Yes':'No'}</div>
      </div>`;
    };
    sel.onchange=()=>{
      state.machine.controller=sel.value;
      caps(); rebuild();
      document.getElementById('hdr-post').textContent=CONTROLLERS[sel.value].label;
      UI.status('Post processor: '+CONTROLLERS[sel.value].label,'ok');
    };
    caps();
    document.getElementById('p-name').onchange=e=>{state.programName=e.target.value; rebuild();};
    document.getElementById('p-num').onchange=e=>{state.programNumber=+e.target.value||1001; rebuild();};
  },

  /* ---------- Export ---------- */
  rExport(){
    const v=document.getElementById('v-export');
    const errs=state.issues.filter(i=>i.lvl==='e');
    v.innerHTML=`
      <div class="panel"><h3>Export G-code</h3>
        ${errs.length?`<div class="errbox"><b>${errs.length} error(s) detected.</b> Resolve the validation errors
          in the G-Code Editor tab before exporting.</div>`:
          `<div class="warnbox">No blocking errors were detected. This code has still not been verified on your
          machine — run it in a simulator and perform a dry run first.</div>`}
        <div class="row">
          <button class="btn primary" data-ext="nc">Download .NC</button>
          <button class="btn" data-ext="txt">Download .TXT</button>
          <button class="btn" data-ext="tap">Download .TAP</button>
          <button class="btn" data-ext="gcode">Download .GCODE</button>
        </div>
        <div class="hint" style="margin-top:10px">
          File name: <b>${U.esc(state.programName)}</b> · ${state.lineMap.length} lines ·
          ${CONTROLLERS[state.machine.controller].label}
        </div>
      </div>
      <div class="panel"><h3>Project backup</h3>
        <div class="row">
          <button class="btn" id="exp-json">Export project (.json)</button>
          <button class="btn" id="imp-json">Import project</button>
          <input type="file" id="imp-file" accept=".json" style="display:none">
        </div>
      </div>
      <div class="panel"><h3>Validation summary</h3><div id="exp-issues" class="scroll"></div></div>`;
    v.querySelectorAll('[data-ext]').forEach(b=>b.onclick=()=>{
      UI.download(state.programName+'.'+b.dataset.ext, document.getElementById('gcode-ta').value||state.gcode);
    });
    document.getElementById('exp-json').onclick=()=>{
      UI.download(state.programName+'.json', JSON.stringify({
        machine:state.machine, workpiece:state.workpiece, tools:state.tools,
        ops:state.ops, gear:state.gear, programName:state.programName,
        programNumber:state.programNumber
      },null,2));
    };
    document.getElementById('imp-json').onclick=()=>document.getElementById('imp-file').click();
    document.getElementById('imp-file').onchange=e=>{
      const f=e.target.files[0]; if(!f) return;
      const r=new FileReader();
      r.onload=()=>{
        try{
          const d=JSON.parse(r.result);
          Object.assign(state,{machine:d.machine||state.machine, workpiece:d.workpiece||state.workpiece,
            tools:d.tools||state.tools, ops:d.ops||[], gear:d.gear||null,
            programName:d.programName||state.programName, programNumber:d.programNumber||1001});
          rebuild(); UI.show('dashboard');
          UI.status('Project imported','ok');
        }catch(err){ UI.status('Import failed: '+err.message,'err'); }
      };
      r.readAsText(f);
    };
    const box=document.getElementById('exp-issues');
    box.innerHTML=state.issues.length? state.issues.map(is=>
      `<div class="issue ${is.lvl}"><span class="ln">${is.lvl.toUpperCase()}</span>
       <span>${U.esc(is.msg)}</span></div>`).join('')
      : '<div class="hint">No issues detected.</div>';
  },

  download(name, content){
    const blob=new Blob([content],{type:'text/plain'});
    const a=document.createElement('a');
    a.href=URL.createObjectURL(blob);
    a.download=name;
    document.body.appendChild(a); a.click();
    setTimeout(()=>{URL.revokeObjectURL(a.href);a.remove();},500);
    UI.status('Exported '+name,'ok');
  },

  status(msg, kind){
    const dot=document.getElementById('st-dot');
    const txt=document.getElementById('st-text');
    if(txt) txt.textContent=msg;
    if(dot){ dot.className='dot '+(kind==='ok'?'ok':kind==='warn'?'warn':kind==='err'?'err':''); }
  }
};

function findLine(ref){
  for(let i=0;i<state.lineMap.length;i++){
    const r=state.lineMap[i].ref;
    if(r && r.op===ref.op && (ref.mi===undefined || r.mi===ref.mi)) return i+1;
  }
  return null;
}

function refreshHeader(){
  const m=state.machine;
  document.getElementById('hdr-machine').textContent=m.name+' ('+m.type+')';
  document.getElementById('hdr-post').textContent=CONTROLLERS[m.controller].label;
  document.getElementById('hdr-ops').textContent=state.ops.length;
  let mv=0; state.toolpaths.forEach(t=>mv+=t.moves.length);
  document.getElementById('hdr-moves').textContent=mv;
  document.getElementById('hdr-lines').textContent=state.lineMap.length;

  const errs=state.issues.filter(i=>i.lvl==='e').length;
  const warns=state.issues.filter(i=>i.lvl==='w').length;
  const sv=document.getElementById('st-val');
  if(sv){
    sv.textContent=errs?errs+' error(s)':(warns?warns+' warning(s)':'OK');
    sv.style.color=errs?'var(--err)':(warns?'var(--warn)':'var(--ok)');
  }
  const len=totalPathLen();
  const sl=document.getElementById('st-len'); if(sl) sl.textContent=U.r(len.feed/1000,2);
  const st=document.getElementById('st-time'); if(st) st.textContent=U.r(cycleTime(),1);
  const dot=document.getElementById('st-dot');
  if(dot) dot.className='dot '+(errs?'err':(warns?'warn':'ok'));
  const txt=document.getElementById('st-text');
  if(txt && txt.textContent==='Ready') txt.textContent= errs?'Validation errors':(warns?'Warnings present':'Program generated');
}

/* ------------------------------------------------------------- 13. BOOT */
window.addEventListener('DOMContentLoaded',()=>{
  UI.init();
  // default sample so the app is immediately useful
  UI.loadSample('plate');
  UI.show('dashboard');
  Viz.init();
  setTimeout(()=>Viz.resize(),100);
  UI.status('Ready — load a sample project or start configuring','ok');
  console.log('%c CNC CAM Generator ready ','background:#22a8ff;color:#000;font-weight:bold');
  console.log('Modules: Machine / Tool Library / Operations / Gear / Post / Validation / Simulation');
});
</script>
</body>
</html>
