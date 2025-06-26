.class public abstract Lj96;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/firebase/inappmessaging/model/MessageType;

.field public b:Lf96;


# direct methods
.method public constructor <init>(Lf96;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf96;",
            "Lcom/google/firebase/inappmessaging/model/MessageType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj96;->b:Lf96;

    .line 3
    iput-object p2, p0, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    return-void
.end method


# virtual methods
.method public a()Lh96;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
