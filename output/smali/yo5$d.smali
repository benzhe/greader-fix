.class public Lyo5$d;
.super Lyo5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyo5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyo5;-><init>()V

    .line 2
    iput-object p1, p0, Lyo5$d;->b:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "FieldValue.increment"

    return-object v0
.end method
