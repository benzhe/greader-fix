.class public final synthetic Lyy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# instance fields
.field public final a:Lsy1;

.field public final b:Lzy1;


# direct methods
.method public constructor <init>(Lsy1;Lzy1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyy1;->a:Lsy1;

    iput-object p2, p0, Lyy1;->b:Lzy1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lyy1;->a:Lsy1;

    iget-object v1, p0, Lyy1;->b:Lzy1;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-wide v3, v1, Lzy1;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    iget-object v3, v1, Lzy1;->b:Ljava/lang/String;

    const-string v4, "gws_query_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v3, v1, Lzy1;->c:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v1, v1, Lzy1;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "event_state"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "offline_buffered_pings"

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object p1, v0, Lsy1;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbg(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbg;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    :try_start_0
    iget-object v0, v0, Lsy1;->e:Landroid/content/Context;

    .line 10
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 11
    invoke-interface {p1, v1}, Lcom/google/android/gms/ads/internal/util/zzbg;->zzaq(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to schedule offline ping sender."

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v3
.end method
