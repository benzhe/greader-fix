.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbd;


# virtual methods
.method public c(Ldd;Lad$a;)V
    .locals 0

    .line 1
    sget-object p1, Lad$a;->ON_DESTROY:Lad$a;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
