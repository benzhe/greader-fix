.class public Lfh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw35<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lgh5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le45;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le45<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le45;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lah5;->a:Lah5;

    invoke-virtual {p1}, Le45;->k()Ljava/lang/Exception;

    move-result-object p1

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Lah5;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    const-string v1, "Error fetching settings."

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
