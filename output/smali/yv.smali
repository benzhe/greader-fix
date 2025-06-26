.class public final synthetic Lyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lxv;

.field public final f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lxv;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyv;->e:Lxv;

    iput-object p2, p0, Lyv;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyv;->e:Lxv;

    iget-object v1, p0, Lyv;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, v0, Lxv;->b:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
