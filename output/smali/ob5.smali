.class public Lob5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/google/android/material/tabs/TabLayout$TabView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lob5;->b:Lcom/google/android/material/tabs/TabLayout$TabView;

    iput-object p2, p0, Lob5;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lob5;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lob5;->b:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object p2, p0, Lob5;->a:Landroid/view/View;

    .line 3
    sget p3, Lcom/google/android/material/tabs/TabLayout$TabView;->p:I

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method
