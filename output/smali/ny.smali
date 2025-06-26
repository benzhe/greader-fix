.class public final Lny;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lny$f;,
        Lny$b;,
        Lny$g;,
        Lny$c;,
        Lny$d;,
        Lny$a;,
        Lny$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lny$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lny$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field public final b:Lny$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$g<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lny$a;Lny$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lny$f;",
            ">(",
            "Ljava/lang/String;",
            "Lny$a<",
            "TC;TO;>;",
            "Lny$g<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    .line 2
    invoke-static {p2, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    .line 3
    invoke-static {p3, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lny;->c:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lny;->a:Lny$a;

    .line 6
    iput-object p3, p0, Lny;->b:Lny$g;

    return-void
.end method
