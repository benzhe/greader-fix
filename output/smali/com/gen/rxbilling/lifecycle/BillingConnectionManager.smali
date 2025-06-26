.class public final Lcom/gen/rxbilling/lifecycle/BillingConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcd;"
    }
.end annotation


# virtual methods
.method public final connect()V
    .locals 2
    .annotation runtime Lkd;
        value = .enum Lad$a;->ON_START:Lad$a;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "connect"

    .line 1
    invoke-static {v1, v0}, Lc88;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final disconnect()V
    .locals 2
    .annotation runtime Lkd;
        value = .enum Lad$a;->ON_STOP:Lad$a;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "disconnect"

    .line 1
    invoke-static {v1, v0}, Lc88;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
