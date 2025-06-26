.class public final Lfb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxa3;
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lxa3<",
        "TT;>;",
        "Lcb3<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Lfb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfb3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfb3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfb3;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lfb3;->b:Lfb3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfb3;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcb3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcb3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfb3;

    const-string v1, "instance cannot be null"

    .line 2
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p0}, Lfb3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcb3<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lfb3;->b:Lfb3;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lfb3;

    invoke-direct {v0, p0}, Lfb3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfb3;->a:Ljava/lang/Object;

    return-object v0
.end method
