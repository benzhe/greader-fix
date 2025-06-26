.class public final synthetic Lex0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ld23;

.field public final c:Lcom/google/android/gms/internal/ads/zzbar;

.field public final d:Lcom/google/android/gms/ads/internal/zzb;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld23;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lex0;->a:Landroid/content/Context;

    iput-object p2, p0, Lex0;->b:Ld23;

    iput-object p3, p0, Lex0;->c:Lcom/google/android/gms/internal/ads/zzbar;

    iput-object p4, p0, Lex0;->d:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p5, p0, Lex0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 13

    .line 1
    iget-object v0, p0, Lex0;->a:Landroid/content/Context;

    iget-object v5, p0, Lex0;->b:Ld23;

    iget-object v7, p0, Lex0;->c:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v9, p0, Lex0;->d:Lcom/google/android/gms/ads/internal/zzb;

    iget-object p1, p0, Lex0;->e:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkw()Lfx0;

    .line 3
    invoke-static {}, Ljy0;->a()Ljy0;

    move-result-object v1

    .line 4
    new-instance v10, Lep3;

    invoke-direct {v10}, Lep3;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-static/range {v0 .. v12}, Lfx0;->a(Landroid/content/Context;Ljy0;Ljava/lang/String;ZZLd23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lsk2;Lwk2;)Lxw0;

    move-result-object v0

    .line 6
    new-instance v1, Lus0;

    invoke-direct {v1, v0}, Lus0;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v2

    new-instance v3, Lgx0;

    invoke-direct {v3, v1}, Lgx0;-><init>(Lus0;)V

    .line 8
    check-cast v2, Lww0;

    .line 9
    iput-object v3, v2, Lww0;->k:Lgy0;

    .line 10
    invoke-interface {v0, p1}, Lxw0;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
