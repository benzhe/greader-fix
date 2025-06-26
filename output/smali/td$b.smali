.class public Ltd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljd<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final a:Lwd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwd<",
            "TD;>;"
        }
    .end annotation
.end field

.field public final b:Lsd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lwd;Lsd$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd<",
            "TD;>;",
            "Lsd$a<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ltd$b;->c:Z

    .line 3
    iput-object p1, p0, Ltd$b;->a:Lwd;

    .line 4
    iput-object p2, p0, Ltd$b;->b:Lsd$a;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd$b;->b:Lsd$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
