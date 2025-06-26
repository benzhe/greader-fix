.class public final Lks7$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lks7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lks7$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iget v0, p1, Lks7$b;->a:I

    iput v0, p0, Lks7$b;->a:I

    .line 3
    iget p1, p1, Lks7$b;->b:I

    iput p1, p0, Lks7$b;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget v0, p0, Lks7$b;->c:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lks7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lks7;-><init>(Lks7$b;Lks7$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance p1, Lks7;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lks7;-><init>(Lks7$b;Lks7$a;)V

    return-object p1
.end method
