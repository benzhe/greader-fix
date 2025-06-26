.class public final Ls77;
.super Lc47$i;
.source "SourceFile"


# instance fields
.field public final a:Lc47$e;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lq77;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Ls77;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Lc47$i;-><init>()V

    .line 2
    sget-object p1, Lx47;->m:Lx47;

    const-string v0, "Panic! This is a bug!"

    .line 3
    invoke-virtual {p1, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    invoke-virtual {p1, p2}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    .line 4
    sget-object p2, Lc47$e;->e:Lc47$e;

    .line 5
    invoke-virtual {p1}, Lx47;->f()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    const-string v1, "drop status shouldn\'t be OK"

    invoke-static {p2, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 6
    new-instance p2, Lc47$e;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p1, v0}, Lc47$e;-><init>(Lc47$h;Le37$a;Lx47;Z)V

    .line 7
    iput-object p2, p0, Ls77;->a:Lc47$e;

    return-void
.end method


# virtual methods
.method public a(Lc47$f;)Lc47$e;
    .locals 0

    .line 1
    iget-object p1, p0, Ls77;->a:Lc47$e;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ls77;

    .line 2
    new-instance v1, Lnd5;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lnd5;-><init>(Ljava/lang/String;Lmd5;)V

    .line 3
    iget-object v0, p0, Ls77;->a:Lc47$e;

    const-string v2, "panicPickResult"

    .line 4
    invoke-virtual {v1, v2, v0}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    invoke-virtual {v1}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
