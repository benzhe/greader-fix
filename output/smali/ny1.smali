.class public final Lny1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lep3;

.field public b:Landroid/content/Context;

.field public c:Lxx1;

.field public d:Lcom/google/android/gms/internal/ads/zzbar;

.field public final e:Ljava/lang/String;

.field public final f:Lpp2;

.field public final g:Lcom/google/android/gms/ads/internal/util/zzf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lep3;Lxx1;Ljava/lang/String;Lpp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lny1;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lny1;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iput-object p3, p0, Lny1;->a:Lep3;

    .line 5
    iput-object p4, p0, Lny1;->c:Lxx1;

    .line 6
    iput-object p5, p0, Lny1;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lny1;->f:Lpp2;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object p1

    invoke-virtual {p1}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p1

    iput-object p1, p0, Lny1;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Leq3$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Leq3$a;

    .line 2
    invoke-virtual {v6}, Leq3$a;->M()Lvq3;

    move-result-object v7

    sget-object v8, Lvq3;->g:Lvq3;

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Leq3$a;->x()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-lez v9, :cond_0

    .line 3
    invoke-virtual {v6}, Leq3$a;->x()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    cmp-long p1, v4, v1

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    const-string v1, "offline_signal_statistics"

    const-string v2, "statistic_name = \'last_successful_request_time\'"

    .line 6
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method
