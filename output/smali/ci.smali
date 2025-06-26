.class public Lci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lii;

.field public static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lhi;

    invoke-direct {v0}, Lhi;-><init>()V

    sput-object v0, Lci;->a:Lii;

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Lgi;

    invoke-direct {v0}, Lgi;-><init>()V

    sput-object v0, Lci;->a:Lii;

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 4
    new-instance v0, Lfi;

    invoke-direct {v0}, Lfi;-><init>()V

    sput-object v0, Lci;->a:Lii;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lei;

    invoke-direct {v0}, Lei;-><init>()V

    sput-object v0, Lci;->a:Lii;

    .line 6
    :goto_0
    new-instance v0, Lci$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Lci$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lci;->b:Landroid/util/Property;

    .line 7
    new-instance v0, Lci$b;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Lci$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-object v0, Lci;->a:Lii;

    invoke-virtual {v0, p0}, Lii;->b(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    sget-object v0, Lci;->a:Lii;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lii;->d(Landroid/view/View;IIII)V

    return-void
.end method
