.class public final Lw42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field public final synthetic a:Lxs0;

.field public final synthetic b:Lhl2;

.field public final synthetic c:Lsk2;

.field public final synthetic d:Lc52;

.field public final synthetic e:Lu42;


# direct methods
.method public constructor <init>(Lu42;Lxs0;Lhl2;Lsk2;Lc52;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw42;->e:Lu42;

    iput-object p2, p0, Lw42;->a:Lxs0;

    iput-object p3, p0, Lw42;->b:Lhl2;

    iput-object p4, p0, Lw42;->c:Lsk2;

    iput-object p5, p0, Lw42;->d:Lc52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lw42;->a:Lxs0;

    iget-object v1, p0, Lw42;->e:Lu42;

    .line 2
    iget-object v1, v1, Lu42;->d:Lv42;

    .line 3
    iget-object v2, p0, Lw42;->b:Lhl2;

    iget-object v3, p0, Lw42;->c:Lsk2;

    iget-object v4, p0, Lw42;->d:Lc52;

    invoke-interface {v1, v2, v3, p1, v4}, Lv42;->a(Lhl2;Lsk2;Landroid/view/View;Lc52;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzkg()V
    .locals 0

    return-void
.end method

.method public final zzkh()V
    .locals 0

    return-void
.end method
