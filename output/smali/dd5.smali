.class public final Ldd5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc5;


# instance fields
.field public a:Ltc5;

.field public b:Lvc5;


# direct methods
.method public constructor <init>(Ltc5;Lvc5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectionClient cannot be null"

    invoke-static {p1, v0}, Lc50;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ltc5;

    iput-object p1, p0, Ldd5;->a:Ltc5;

    const-string p1, "embeddedPlayer cannot be null"

    invoke-static {p2, p1}, Lc50;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lvc5;

    iput-object p2, p0, Ldd5;->b:Lvc5;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ldd5;->b:Lvc5;

    invoke-interface {v0, p1}, Lvc5;->A(Z)V

    iget-object v0, p0, Ldd5;->a:Ltc5;

    invoke-interface {v0, p1}, Ltc5;->A(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Ldd5;->a:Ltc5;

    invoke-interface {p1}, Led5;->a()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lad5;

    invoke-direct {v0, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
