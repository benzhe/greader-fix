.class public final synthetic Lkj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# instance fields
.field public final a:Lmj5;


# direct methods
.method public constructor <init>(Lmj5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkj5;->a:Lmj5;

    return-void
.end method


# virtual methods
.method public a(Le45;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkj5;->a:Lmj5;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Le45;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Le45;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzi5;

    .line 4
    sget-object v1, Lah5;->a:Lah5;

    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lzi5;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lah5;->b(Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Lmj5;->b:Lnl5;

    invoke-virtual {p1}, Lzi5;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnl5;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lah5;->a:Lah5;

    .line 8
    invoke-virtual {p1}, Le45;->k()Ljava/lang/Exception;

    move-result-object p1

    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, v1}, Lah5;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FirebaseCrashlytics"

    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    .line 10
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
