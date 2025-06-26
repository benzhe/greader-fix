.class public Ltj6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltj6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ltj6$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltj6$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfl6;Ljava/lang/Object;Lfl6;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfl6;",
            "TK;",
            "Lfl6;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ltj6$a;

    invoke-direct {v0, p1, p2, p3, p4}, Ltj6$a;-><init>(Lfl6;Ljava/lang/Object;Lfl6;Ljava/lang/Object;)V

    iput-object v0, p0, Ltj6;->a:Ltj6$a;

    .line 3
    iput-object p2, p0, Ltj6;->b:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Ltj6;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ltj6$a;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ltj6$a<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltj6$a;->a:Lfl6;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcj6;->c(Lfl6;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Ltj6$a;->c:Lfl6;

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0, p2}, Lcj6;->c(Lfl6;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Lti6;Ltj6$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lti6;",
            "Ltj6$a<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ltj6$a;->a:Lfl6;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcj6;->p(Lti6;Lfl6;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Ltj6$a;->c:Lfl6;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcj6;->p(Lti6;Lfl6;ILjava/lang/Object;)V

    return-void
.end method
