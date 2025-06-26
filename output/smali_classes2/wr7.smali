.class public Lwr7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    and-int/lit8 p1, p5, 0x1

    and-int/lit8 p1, p5, 0x2

    and-int/lit8 p1, p5, 0x4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lwr7;->a:Ljava/lang/String;

    iput-object p1, p0, Lwr7;->b:Ljava/lang/String;

    iput-object p1, p0, Lwr7;->c:Ljava/lang/String;

    return-void
.end method
