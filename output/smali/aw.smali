.class public final synthetic Law;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final e:Lcom/google/android/gms/ads/internal/util/zzad;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzad;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law;->e:Lcom/google/android/gms/ads/internal/util/zzad;

    iput p2, p0, Law;->f:I

    iput p3, p0, Law;->g:I

    iput p4, p0, Law;->h:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Law;->e:Lcom/google/android/gms/ads/internal/util/zzad;

    iget v0, p0, Law;->f:I

    iget v1, p0, Law;->g:I

    iget v2, p0, Law;->h:I

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p2, v0, :cond_3

    .line 2
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/util/zzad;->a:Landroid/content/Context;

    instance-of p2, p2, Landroid/app/Activity;

    if-nez p2, :cond_0

    const-string p1, "Can not create dialog without Activity Context"

    .line 3
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/util/zzad;->b:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\\+"

    const-string v1, "%20"

    .line 6
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "No debug information"

    .line 17
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/util/zzad;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ad Information"

    .line 19
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 20
    new-instance v1, Ldw;

    invoke-direct {v1, p1, p2}, Ldw;-><init>(Lcom/google/android/gms/ads/internal/util/zzad;Ljava/lang/String;)V

    const-string p1, "Share"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 21
    sget-object p1, Lcw;->e:Landroid/content/DialogInterface$OnClickListener;

    const-string p2, "Close"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 22
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_3
    if-ne p2, v1, :cond_4

    const-string p2, "Debug mode [Creative Preview] selected."

    .line 24
    invoke-static {p2}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 25
    sget-object p2, Lms0;->a:Lzv2;

    new-instance v0, Lfw;

    invoke-direct {v0, p1}, Lfw;-><init>(Lcom/google/android/gms/ads/internal/util/zzad;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    if-ne p2, v2, :cond_5

    const-string p2, "Debug mode [Troubleshooting] selected."

    .line 26
    invoke-static {p2}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 27
    sget-object p2, Lms0;->a:Lzv2;

    new-instance v0, Lew;

    invoke-direct {v0, p1}, Lew;-><init>(Lcom/google/android/gms/ads/internal/util/zzad;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method
