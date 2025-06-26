.class public final Lmp1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ld23;

.field public final c:Lb60;

.field public final d:Lcom/google/android/gms/internal/ads/zzbar;

.field public final e:Lcom/google/android/gms/ads/internal/zzb;

.field public final f:Lep3;

.field public final g:Lkc1;


# direct methods
.method public constructor <init>(Lfx0;Landroid/content/Context;Ld23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lkc1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lmp1;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lmp1;->b:Ld23;

    .line 4
    iput-object p4, p0, Lmp1;->c:Lb60;

    .line 5
    iput-object p5, p0, Lmp1;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    iput-object p6, p0, Lmp1;->e:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    iput-object p7, p0, Lmp1;->f:Lep3;

    .line 8
    iput-object p8, p0, Lmp1;->g:Lkc1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lix0;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lmp1;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Ljy0;->c(Lcom/google/android/gms/internal/ads/zzvt;)Ljy0;

    move-result-object v2

    move-object v3, p1

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    iget-object v6, v0, Lmp1;->b:Ld23;

    iget-object v7, v0, Lmp1;->c:Lb60;

    iget-object v8, v0, Lmp1;->d:Lcom/google/android/gms/internal/ads/zzbar;

    new-instance v9, Lpp1;

    invoke-direct {v9, p0}, Lpp1;-><init>(Lmp1;)V

    iget-object v10, v0, Lmp1;->e:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v11, v0, Lmp1;->f:Lep3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 3
    invoke-static/range {v1 .. v13}, Lfx0;->a(Landroid/content/Context;Ljy0;Ljava/lang/String;ZZLd23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lsk2;Lwk2;)Lxw0;

    move-result-object v1

    return-object v1
.end method
