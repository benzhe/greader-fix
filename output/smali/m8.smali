.class public Lm8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln8$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln8$a<",
        "Lj9$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lj9$c;

    .line 2
    iget p1, p1, Lj9$c;->c:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lj9$c;

    .line 2
    iget-boolean p1, p1, Lj9$c;->d:Z

    return p1
.end method
