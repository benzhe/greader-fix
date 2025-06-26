.class public final Lrz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk91;


# instance fields
.field public a:Lyd1;

.field public b:Ln91;

.field public c:Lgi1;

.field public d:Li41;

.field public e:Lhl2;

.field public f:Lsi2;

.field public g:Lvh2;

.field public final synthetic h:Lpz0;


# direct methods
.method public constructor <init>(Lpz0;Loz0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrz0;->h:Lpz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrz0;->e()Lji1;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lvh2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Lrz0;->g:Lvh2;

    return-object p0
.end method

.method public final synthetic c(Lhl2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Lrz0;->e:Lhl2;

    return-object p0
.end method

.method public final synthetic d(Lsi2;)Lk91;
    .locals 0

    .line 1
    iput-object p1, p0, Lrz0;->f:Lsi2;

    return-object p0
.end method

.method public final e()Lji1;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lrz0;->a:Lyd1;

    const-class v2, Lyd1;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v1, v0, Lrz0;->b:Ln91;

    const-class v2, Ln91;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lrz0;->c:Lgi1;

    const-class v2, Lgi1;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lrz0;->d:Li41;

    const-class v2, Li41;

    invoke-static {v1, v2}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v1, Lqz0;

    iget-object v4, v0, Lrz0;->h:Lpz0;

    iget-object v5, v0, Lrz0;->d:Li41;

    iget-object v6, v0, Lrz0;->c:Lgi1;

    new-instance v7, Lm71;

    invoke-direct {v7}, Lm71;-><init>()V

    new-instance v8, Lem2;

    invoke-direct {v8}, Lem2;-><init>()V

    new-instance v9, Lw81;

    invoke-direct {v9}, Lw81;-><init>()V

    new-instance v10, Lat1;

    invoke-direct {v10}, Lat1;-><init>()V

    iget-object v11, v0, Lrz0;->a:Lyd1;

    iget-object v12, v0, Lrz0;->b:Ln91;

    new-instance v13, Lim2;

    invoke-direct {v13}, Lim2;-><init>()V

    iget-object v14, v0, Lrz0;->e:Lhl2;

    iget-object v15, v0, Lrz0;->f:Lsi2;

    iget-object v2, v0, Lrz0;->g:Lvh2;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lqz0;-><init>(Lpz0;Li41;Lgi1;Lm71;Lem2;Lw81;Lat1;Lyd1;Ln91;Lim2;Lhl2;Lsi2;Lvh2;Loz0;)V

    return-object v1
.end method
