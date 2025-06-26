.class public final Lgs7;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lorg/jsoup/nodes/Element;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lgs7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgs7;

    invoke-direct {v0}, Lgs7;-><init>()V

    sput-object v0, Lgs7;->e:Lgs7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/jsoup/nodes/Element;

    const-string v0, "scriptNode"

    .line 2
    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->val(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string v0, "src"

    .line 4
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
