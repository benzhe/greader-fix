.class public final Lc01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk91;


# instance fields
.field public a:Lyd1;

.field public b:Ln91;

.field public c:Lx42;

.field public d:Lc61;

.field public e:Li41;

.field public f:Lgi1;

.field public g:Lhl2;

.field public h:Lsi2;

.field public i:Lvh2;

.field public final synthetic j:Lpz0;


# direct methods
.method public constructor <init>(Lpz0;Loz0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc01;->j:Lpz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc01;->e()Lg51;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lvh2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Lc01;->i:Lvh2;

    return-object p0
.end method

.method public final synthetic c(Lhl2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Lc01;->g:Lhl2;

    return-object p0
.end method

.method public final synthetic d(Lsi2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Lc01;->h:Lsi2;

    return-object p0
.end method

.method public final e()Lg51;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lc01;->a:Lyd1;

    const-class v2, Lyd1;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v1, v0, Lc01;->b:Ln91;

    const-class v2, Ln91;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lc01;->c:Lx42;

    const-class v2, Lx42;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lc01;->d:Lc61;

    const-class v2, Lc61;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v1, v0, Lc01;->e:Li41;

    const-class v2, Li41;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v1, v0, Lc01;->f:Lgi1;

    const-class v2, Lgi1;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v1, Lf01;

    move-object v3, v1

    iget-object v4, v0, Lc01;->j:Lpz0;

    iget-object v5, v0, Lc01;->e:Li41;

    iget-object v6, v0, Lc01;->f:Lgi1;

    new-instance v2, Lm71;

    move-object v7, v2

    invoke-direct {v2}, Lm71;-><init>()V

    new-instance v2, Lem2;

    move-object v8, v2

    invoke-direct {v2}, Lem2;-><init>()V

    new-instance v2, Lw81;

    move-object v9, v2

    invoke-direct {v2}, Lw81;-><init>()V

    new-instance v2, Lat1;

    move-object v10, v2

    invoke-direct {v2}, Lat1;-><init>()V

    iget-object v11, v0, Lc01;->a:Lyd1;

    iget-object v12, v0, Lc01;->b:Ln91;

    new-instance v2, Lim2;

    move-object v13, v2

    invoke-direct {v2}, Lim2;-><init>()V

    iget-object v14, v0, Lc01;->c:Lx42;

    iget-object v15, v0, Lc01;->d:Lc61;

    iget-object v2, v0, Lc01;->g:Lhl2;

    move-object/from16 v16, v2

    iget-object v2, v0, Lc01;->h:Lsi2;

    move-object/from16 v17, v2

    iget-object v2, v0, Lc01;->i:Lvh2;

    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lf01;-><init>(Lpz0;Li41;Lgi1;Lm71;Lem2;Lw81;Lat1;Lyd1;Ln91;Lim2;Lx42;Lc61;Lhl2;Lsi2;Lvh2;Loz0;)V

    return-object v1
.end method
