.class public Lg26;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg26$a;
    }
.end annotation


# instance fields
.field public final a:Lbf5;

.field public final b:Lpc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lbf5$a;


# direct methods
.method public constructor <init>(Lbf5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg26;->a:Lbf5;

    .line 3
    new-instance p1, Lg26$a;

    invoke-direct {p1, p0}, Lg26$a;-><init>(Lg26;)V

    .line 4
    sget-object v0, Lgb7;->g:Lgb7;

    .line 5
    sget v1, Lmb7;->e:I

    .line 6
    new-instance v1, Lje7;

    invoke-direct {v1, p1, v0}, Lje7;-><init>(Lob7;Lgb7;)V

    .line 7
    invoke-virtual {v1}, Lmb7;->p()Lpc7;

    move-result-object p1

    iput-object p1, p0, Lg26;->b:Lpc7;

    .line 8
    invoke-virtual {p1}, Lpc7;->w()Lic7;

    return-void
.end method
