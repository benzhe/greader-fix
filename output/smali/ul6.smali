.class public Lul6;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltl6;


# direct methods
.method public constructor <init>(Ltl6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lul6;->a:Ltl6;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 1
    :goto_0
    iget-object p1, p0, Lul6;->a:Ltl6;

    .line 2
    iget-object p2, p1, Ltl6;->f:Lhm6;

    .line 3
    iget v0, p2, Lhm6;->d:I

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lhm6;->a()Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lrb;->dismiss()V

    :cond_1
    return-void
.end method
