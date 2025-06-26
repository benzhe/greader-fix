.class public final Lx95;
.super Laa5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx95$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Lx95$a;

.field public c:Z


# direct methods
.method public constructor <init>(Lx95$a;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Laa5;-><init>()V

    .line 2
    iput-object p2, p0, Lx95;->a:Landroid/graphics/Typeface;

    .line 3
    iput-object p1, p0, Lx95;->b:Lx95$a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lx95;->a:Landroid/graphics/Typeface;

    .line 2
    iget-boolean v0, p0, Lx95;->c:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lx95;->b:Lx95$a;

    invoke-interface {v0, p1}, Lx95$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lx95;->c:Z

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lx95;->b:Lx95$a;

    invoke-interface {p2, p1}, Lx95$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
