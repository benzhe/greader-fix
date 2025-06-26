.class public abstract Lwb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lub;


# instance fields
.field public e:Lub;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lub;

    invoke-direct {v0}, Lub;-><init>()V

    sput-object v0, Lwb;->f:Lub;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lwb;->e:Lub;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method
