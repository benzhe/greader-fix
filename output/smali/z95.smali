.class public Lz95;
.super Laa5;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Laa5;

.field public final synthetic c:Ly95;


# direct methods
.method public constructor <init>(Ly95;Landroid/text/TextPaint;Laa5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz95;->c:Ly95;

    iput-object p2, p0, Lz95;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lz95;->b:Laa5;

    invoke-direct {p0}, Laa5;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz95;->b:Laa5;

    invoke-virtual {v0, p1}, Laa5;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz95;->c:Ly95;

    iget-object v1, p0, Lz95;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Ly95;->d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lz95;->b:Laa5;

    invoke-virtual {v0, p1, p2}, Laa5;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
