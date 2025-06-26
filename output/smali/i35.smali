.class public Li35;
.super Lm00;
.source "SourceFile"

# interfaces
.implements Lu35;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm00<",
        "Ln35;",
        ">;",
        "Lu35;"
    }
.end annotation


# instance fields
.field public final F:Z

.field public final G:Lj00;

.field public final H:Landroid/os/Bundle;

.field public I:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lj00;Lqy$a;Lqy$b;)V
    .locals 11

    move-object v7, p0

    move-object v8, p3

    .line 1
    iget-object v0, v8, Lj00;->g:Lh35;

    .line 2
    iget-object v1, v8, Lj00;->h:Ljava/lang/Integer;

    .line 3
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, v8, Lj00;->a:Landroid/accounts/Account;

    const-string v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 5
    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/4 v10, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 7
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 8
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.signin.internal.serverClientId"

    .line 9
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    .line 10
    invoke-virtual {v9, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 11
    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.google.android.gms.signin.internal.hostedDomain"

    .line 12
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 13
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    .line 14
    invoke-direct/range {v0 .. v6}, Lm00;-><init>(Landroid/content/Context;Landroid/os/Looper;ILj00;Lqy$a;Lqy$b;)V

    .line 15
    iput-boolean v10, v7, Li35;->F:Z

    .line 16
    iput-object v8, v7, Li35;->G:Lj00;

    .line 17
    iput-object v9, v7, Li35;->H:Landroid/os/Bundle;

    .line 18
    iget-object v0, v8, Lj00;->h:Ljava/lang/Integer;

    .line 19
    iput-object v0, v7, Li35;->I:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a(Ll35;)V
    .locals 5

    const-string v0, "Expecting a valid ISignInCallbacks"

    .line 1
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Li35;->G:Lj00;

    .line 3
    iget-object v0, v0, Lj00;->a:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "<<default account>>"

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    .line 5
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Li00;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwx;->a(Landroid/content/Context;)Lwx;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lwx;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    .line 8
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, Li35;->I:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 9
    invoke-virtual {p0}, Li00;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ln35;

    new-instance v2, Lcom/google/android/gms/signin/internal/zah;

    invoke-direct {v2, v1}, Lcom/google/android/gms/signin/internal/zah;-><init>(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V

    invoke-interface {v0, v2, p1}, Ln35;->b3(Lcom/google/android/gms/signin/internal/zah;Ll35;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :try_start_2
    new-instance v2, Lcom/google/android/gms/signin/internal/zaj;

    invoke-direct {v2}, Lcom/google/android/gms/signin/internal/zaj;-><init>()V

    check-cast p1, Ltz;

    .line 12
    iget-object v3, p1, Ltz;->f:Landroid/os/Handler;

    new-instance v4, Lvz;

    invoke-direct {v4, p1, v2}, Lvz;-><init>(Ltz;Lcom/google/android/gms/signin/internal/zaj;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 13
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ln35;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Ln35;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lo35;

    invoke-direct {v0, p1}, Lo35;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Li35;->G:Lj00;

    .line 2
    iget-object v0, v0, Lj00;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Li00;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Li35;->H:Landroid/os/Bundle;

    iget-object v1, p0, Li35;->G:Lj00;

    .line 5
    iget-object v1, v1, Lj00;->e:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Li35;->H:Landroid/os/Bundle;

    return-object v0
.end method

.method public final connect()V
    .locals 1

    .line 1
    new-instance v0, Li00$d;

    invoke-direct {v0, p0}, Li00$d;-><init>(Li00;)V

    invoke-virtual {p0, v0}, Li00;->connect(Li00$c;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public requiresSignIn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li35;->F:Z

    return v0
.end method
