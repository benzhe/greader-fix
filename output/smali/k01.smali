.class public final Lk01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk91;


# instance fields
.field public a:Lyd1;

.field public b:Ln91;

.field public c:Lx42;

.field public d:Lhl2;

.field public e:Lsi2;

.field public f:Lvh2;

.field public final synthetic g:Lpz0;


# direct methods
.method public constructor <init>(Lpz0;Loz0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk01;->g:Lpz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk01;->e()Loh1;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lvh2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Lk01;->f:Lvh2;

    return-object p0
.end method

.method public final synthetic c(Lhl2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Lk01;->d:Lhl2;

    return-object p0
.end method

.method public final synthetic d(Lsi2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Lk01;->e:Lsi2;

    return-object p0
.end method

.method public final e()Loh1;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk01;->a:Lyd1;

    const-class v2, Lyd1;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v1, v0, Lk01;->b:Ln91;

    const-class v2, Ln91;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lk01;->c:Lx42;

    const-class v2, Lx42;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v1, Lj01;

    iget-object v4, v0, Lk01;->g:Lpz0;

    new-instance v5, Lm71;

    invoke-direct {v5}, Lm71;-><init>()V

    new-instance v6, Lem2;

    invoke-direct {v6}, Lem2;-><init>()V

    new-instance v7, Lw81;

    invoke-direct {v7}, Lw81;-><init>()V

    new-instance v8, Lat1;

    invoke-direct {v8}, Lat1;-><init>()V

    iget-object v9, v0, Lk01;->a:Lyd1;

    iget-object v10, v0, Lk01;->b:Ln91;

    new-instance v11, Lim2;

    invoke-direct {v11}, Lim2;-><init>()V

    iget-object v12, v0, Lk01;->c:Lx42;

    iget-object v13, v0, Lk01;->d:Lhl2;

    iget-object v14, v0, Lk01;->e:Lsi2;

    iget-object v15, v0, Lk01;->f:Lvh2;

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lj01;-><init>(Lpz0;Lm71;Lem2;Lw81;Lat1;Lyd1;Ln91;Lim2;Lx42;Lhl2;Lsi2;Lvh2;Loz0;)V

    return-object v1
.end method
