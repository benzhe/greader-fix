.class public final Lwj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Luj0;


# direct methods
.method public constructor <init>(Luj0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwj0;->g:Luj0;

    iput-object p2, p0, Lwj0;->e:Ljava/lang/String;

    iput-object p3, p0, Lwj0;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lwj0;->g:Luj0;

    .line 2
    iget-object p1, p1, Luj0;->d:Landroid/content/Context;

    const-string p2, "download"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 4
    :try_start_0
    iget-object p2, p0, Lwj0;->e:Ljava/lang/String;

    iget-object v0, p0, Lwj0;->f:Ljava/lang/String;

    .line 5
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 6
    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/app/DownloadManager$Request;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    iget-object p1, p0, Lwj0;->g:Luj0;

    const-string p2, "Could not store picture."

    invoke-virtual {p1, p2}, Lyj0;->d(Ljava/lang/String;)V

    return-void
.end method
