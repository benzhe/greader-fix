.class public final Luz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk91;


# instance fields
.field public a:Lyd1;

.field public b:Ln91;

.field public c:Lhl2;

.field public d:Lsi2;

.field public e:Lvh2;

.field public final synthetic f:Lpz0;


# direct methods
.method public constructor <init>(Lpz0;Loz0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luz0;->f:Lpz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Luz0;->a:Lyd1;

    const-class v1, Lyd1;

    invoke-static {v0, v1}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Luz0;->b:Ln91;

    const-class v1, Ln91;

    invoke-static {v0, v1}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lxz0;

    iget-object v3, p0, Luz0;->f:Lpz0;

    new-instance v4, Lm71;

    invoke-direct {v4}, Lm71;-><init>()V

    new-instance v5, Lem2;

    invoke-direct {v5}, Lem2;-><init>()V

    new-instance v6, Lw81;

    invoke-direct {v6}, Lw81;-><init>()V

    new-instance v7, Lat1;

    invoke-direct {v7}, Lat1;-><init>()V

    iget-object v8, p0, Luz0;->a:Lyd1;

    iget-object v9, p0, Luz0;->b:Ln91;

    new-instance v10, Lim2;

    invoke-direct {v10}, Lim2;-><init>()V

    iget-object v11, p0, Luz0;->c:Lhl2;

    iget-object v12, p0, Luz0;->d:Lsi2;

    iget-object v13, p0, Luz0;->e:Lvh2;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lxz0;-><init>(Lpz0;Lm71;Lem2;Lw81;Lat1;Lyd1;Ln91;Lim2;Lhl2;Lsi2;Lvh2;Loz0;)V

    return-object v0
.end method

.method public final synthetic b(Lvh2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Luz0;->e:Lvh2;

    return-object p0
.end method

.method public final synthetic c(Lhl2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Luz0;->c:Lhl2;

    return-object p0
.end method

.method public final synthetic d(Lsi2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Luz0;->d:Lsi2;

    return-object p0
.end method
