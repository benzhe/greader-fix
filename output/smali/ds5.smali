.class public final synthetic Lds5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lfs5;

.field public final f:Lfs5$b;

.field public final g:Ldr5;


# direct methods
.method public constructor <init>(Lfs5;Lfs5$b;Ldr5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lds5;->e:Lfs5;

    iput-object p2, p0, Lds5;->f:Lfs5$b;

    iput-object p3, p0, Lds5;->g:Ldr5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lds5;->e:Lfs5;

    iget-object v1, p0, Lds5;->f:Lfs5$b;

    iget-object v3, p0, Lds5;->g:Ldr5;

    .line 1
    iget-object v2, v0, Lfs5;->j:Ler5;

    invoke-virtual {v2}, Ler5;->a()I

    move-result v4

    iput v4, v1, Lfs5$b;->b:I

    .line 2
    new-instance v8, Lut5;

    iget-object v2, v0, Lfs5;->a:Lts5;

    .line 3
    invoke-virtual {v2}, Lts5;->c()Lxs5;

    move-result-object v2

    invoke-interface {v2}, Lxs5;->e()J

    move-result-wide v5

    sget-object v7, Lvs5;->e:Lvs5;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lut5;-><init>(Ldr5;IJLvs5;)V

    iput-object v8, v1, Lfs5$b;->a:Lut5;

    .line 4
    iget-object v0, v0, Lfs5;->g:Ltt5;

    invoke-interface {v0, v8}, Ltt5;->a(Lut5;)V

    return-void
.end method
