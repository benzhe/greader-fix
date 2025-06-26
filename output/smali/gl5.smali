.class public Lgl5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lokhttp3/Headers;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lokhttp3/Headers;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lgl5;->a:I

    .line 3
    iput-object p2, p0, Lgl5;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lgl5;->c:Lokhttp3/Headers;

    return-void
.end method
