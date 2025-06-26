.class public final Lj86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lpc7<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Li86;


# direct methods
.method public constructor <init>(Li86;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj86;->a:Li86;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lj86;->a:Li86;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lh86;

    invoke-direct {v1, v0}, Lh86;-><init>(Li86;)V

    .line 4
    sget-object v0, Lgb7;->g:Lgb7;

    .line 5
    sget v2, Lmb7;->e:I

    .line 6
    new-instance v2, Lje7;

    invoke-direct {v2, v1, v0}, Lje7;-><init>(Lob7;Lgb7;)V

    .line 7
    invoke-virtual {v2}, Lmb7;->p()Lpc7;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lpc7;->w()Lic7;

    return-object v0
.end method
