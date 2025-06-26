.class public Lcom/gen/rxbilling/lifecycle/BillingConnectionManager_LifecycleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzc;


# instance fields
.field public final a:Lcom/gen/rxbilling/lifecycle/BillingConnectionManager;


# direct methods
.method public constructor <init>(Lcom/gen/rxbilling/lifecycle/BillingConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gen/rxbilling/lifecycle/BillingConnectionManager_LifecycleAdapter;->a:Lcom/gen/rxbilling/lifecycle/BillingConnectionManager;

    return-void
.end method


# virtual methods
.method public a(Ldd;Lad$a;ZLhd;)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    return-void

    .line 1
    :cond_1
    sget-object p3, Lad$a;->ON_START:Lad$a;

    if-ne p2, p3, :cond_4

    if-eqz v0, :cond_2

    const-string p2, "connect"

    .line 2
    invoke-virtual {p4, p2, p1}, Lhd;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/gen/rxbilling/lifecycle/BillingConnectionManager_LifecycleAdapter;->a:Lcom/gen/rxbilling/lifecycle/BillingConnectionManager;

    invoke-virtual {p1}, Lcom/gen/rxbilling/lifecycle/BillingConnectionManager;->connect()V

    :cond_3
    return-void

    .line 4
    :cond_4
    sget-object p3, Lad$a;->ON_STOP:Lad$a;

    if-ne p2, p3, :cond_6

    if-eqz v0, :cond_5

    const-string p2, "disconnect"

    .line 5
    invoke-virtual {p4, p2, p1}, Lhd;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/gen/rxbilling/lifecycle/BillingConnectionManager_LifecycleAdapter;->a:Lcom/gen/rxbilling/lifecycle/BillingConnectionManager;

    invoke-virtual {p1}, Lcom/gen/rxbilling/lifecycle/BillingConnectionManager;->disconnect()V

    :cond_6
    return-void
.end method
