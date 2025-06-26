.class public final Lox6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lox6$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lox6$a;Lgm7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lox6$a;->a:Z

    .line 3
    iput-boolean p2, p0, Lox6;->a:Z

    .line 4
    iget-boolean p2, p1, Lox6$a;->b:Z

    .line 5
    iput-boolean p2, p0, Lox6;->b:Z

    .line 6
    iget-object p1, p1, Lox6$a;->c:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lox6;->c:Ljava/util/List;

    return-void
.end method
