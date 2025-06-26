.class public Ly95$a;
.super Lb8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly95;->b(Landroid/content/Context;Laa5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Laa5;

.field public final synthetic b:Ly95;


# direct methods
.method public constructor <init>(Ly95;Laa5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly95$a;->b:Ly95;

    iput-object p2, p0, Ly95$a;->a:Laa5;

    invoke-direct {p0}, Lb8;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly95$a;->b:Ly95;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Ly95;->m:Z

    .line 3
    iget-object v0, p0, Ly95$a;->a:Laa5;

    invoke-virtual {v0, p1}, Laa5;->a(I)V

    return-void
.end method

.method public d(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly95$a;->b:Ly95;

    iget v1, v0, Ly95;->d:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 2
    iput-object p1, v0, Ly95;->n:Landroid/graphics/Typeface;

    .line 3
    iget-object p1, p0, Ly95$a;->b:Ly95;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Ly95;->m:Z

    .line 5
    iget-object v0, p0, Ly95$a;->a:Laa5;

    .line 6
    iget-object p1, p1, Ly95;->n:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Laa5;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
