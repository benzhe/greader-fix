.class public final synthetic Ln02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Ll02;

.field public final b:Landroid/view/View;

.field public final c:Lsk2;


# direct methods
.method public constructor <init>(Ll02;Landroid/view/View;Lsk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln02;->a:Ll02;

    iput-object p2, p0, Ln02;->b:Landroid/view/View;

    iput-object p3, p0, Ln02;->c:Lsk2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 2

    iget-object p1, p0, Ln02;->a:Ll02;

    iget-object v0, p0, Ln02;->b:Landroid/view/View;

    iget-object v1, p0, Ln02;->c:Lsk2;

    .line 1
    iget-object p1, p1, Ll02;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbos;->a(Landroid/content/Context;Landroid/view/View;Lsk2;)Lcom/google/android/gms/internal/ads/zzbos;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method
