.class public final synthetic Ldd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lad2;


# direct methods
.method public constructor <init>(Lad2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd2;->e:Lad2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Ldd2;->e:Lad2;

    .line 1
    new-instance v9, Lbd2;

    iget-object v1, v0, Lad2;->b:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v1

    invoke-virtual {v1}, Lh20;->c()Z

    move-result v2

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, v0, Lad2;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzax(Landroid/content/Context;)Z

    move-result v3

    iget-object v1, v0, Lad2;->c:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzx()Z

    move-result v5

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, v0, Lad2;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzau(Landroid/content/Context;)I

    move-result v6

    iget-object v1, v0, Lad2;->b:Landroid/content/Context;

    const-string v7, "com.google.android.gms.ads.dynamite"

    .line 6
    invoke-static {v1, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 7
    iget-object v0, v0, Lad2;->b:Landroid/content/Context;

    .line 8
    invoke-static {v0, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move-object v1, v9

    move v7, v8

    move v8, v0

    .line 9
    invoke-direct/range {v1 .. v8}, Lbd2;-><init>(ZZLjava/lang/String;ZIII)V

    return-object v9
.end method
