.class public final Lun;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lin;

.field public static final b:Lin;

.field public static final c:Lin;

.field public static final d:Lin;

.field public static final e:Lin;

.field public static final f:Lin;

.field public static final g:Lin;

.field public static final h:Lin;

.field public static final i:Lin;

.field public static final j:Lin;

.field public static final k:Lin;

.field public static final l:Lin;

.field public static final m:Lin;

.field public static final n:Lin;

.field public static final o:Lin;

.field public static final p:Lin;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    const/4 v1, 0x3

    .line 2
    iput v1, v0, Lin;->a:I

    const-string v2, "Google Play In-app Billing API version is less than 3"

    .line 3
    iput-object v2, v0, Lin;->b:Ljava/lang/String;

    .line 4
    sput-object v0, Lun;->a:Lin;

    .line 5
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 6
    iput v1, v0, Lin;->a:I

    const-string v2, "Google Play In-app Billing API version is less than 9"

    .line 7
    iput-object v2, v0, Lin;->b:Ljava/lang/String;

    .line 8
    sput-object v0, Lun;->b:Lin;

    .line 9
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 10
    iput v1, v0, Lin;->a:I

    const-string v2, "Billing service unavailable on device."

    .line 11
    iput-object v2, v0, Lin;->b:Ljava/lang/String;

    .line 12
    sput-object v0, Lun;->c:Lin;

    .line 13
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    const/4 v2, 0x5

    .line 14
    iput v2, v0, Lin;->a:I

    const-string v3, "Client is already in the process of connecting to billing service."

    .line 15
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    .line 16
    sput-object v0, Lun;->d:Lin;

    .line 17
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 18
    iput v1, v0, Lin;->a:I

    const-string v1, "Play Store version installed does not support cross selling products."

    .line 19
    iput-object v1, v0, Lin;->b:Ljava/lang/String;

    .line 20
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 21
    iput v2, v0, Lin;->a:I

    const-string v1, "The list of SKUs can\'t be empty."

    .line 22
    iput-object v1, v0, Lin;->b:Ljava/lang/String;

    .line 23
    sput-object v0, Lun;->e:Lin;

    .line 24
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 25
    iput v2, v0, Lin;->a:I

    const-string v1, "SKU type can\'t be empty."

    .line 26
    iput-object v1, v0, Lin;->b:Ljava/lang/String;

    .line 27
    sput-object v0, Lun;->f:Lin;

    .line 28
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    const/4 v1, -0x2

    .line 29
    iput v1, v0, Lin;->a:I

    const-string v3, "Client does not support extra params."

    .line 30
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    .line 31
    sput-object v0, Lun;->g:Lin;

    .line 32
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 33
    iput v1, v0, Lin;->a:I

    const-string v3, "Client does not support the feature."

    .line 34
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    .line 35
    sput-object v0, Lun;->h:Lin;

    .line 36
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 37
    iput v1, v0, Lin;->a:I

    const-string v3, "Client does not support get purchase history."

    .line 38
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    .line 39
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 40
    iput v2, v0, Lin;->a:I

    const-string v3, "Invalid purchase token."

    .line 41
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    .line 42
    sput-object v0, Lun;->i:Lin;

    const/4 v0, 0x6

    .line 43
    new-instance v3, Lin;

    invoke-direct {v3}, Lin;-><init>()V

    .line 44
    iput v0, v3, Lin;->a:I

    const-string v0, "An internal error occurred."

    .line 45
    iput-object v0, v3, Lin;->b:Ljava/lang/String;

    .line 46
    sput-object v3, Lun;->j:Lin;

    const/4 v0, 0x4

    .line 47
    new-instance v3, Lin;

    invoke-direct {v3}, Lin;-><init>()V

    .line 48
    iput v0, v3, Lin;->a:I

    const-string v0, "Item is unavailable for purchase."

    .line 49
    iput-object v0, v3, Lin;->b:Ljava/lang/String;

    .line 50
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 51
    iput v2, v0, Lin;->a:I

    const-string v3, "SKU can\'t be null."

    .line 52
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    .line 53
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 54
    iput v2, v0, Lin;->a:I

    const-string v3, "SKU type can\'t be null."

    .line 55
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    new-instance v3, Lin;

    invoke-direct {v3}, Lin;-><init>()V

    .line 57
    iput v0, v3, Lin;->a:I

    const-string v0, ""

    .line 58
    iput-object v0, v3, Lin;->b:Ljava/lang/String;

    .line 59
    sput-object v3, Lun;->k:Lin;

    const/4 v0, -0x1

    .line 60
    new-instance v3, Lin;

    invoke-direct {v3}, Lin;-><init>()V

    .line 61
    iput v0, v3, Lin;->a:I

    const-string v0, "Service connection is disconnected."

    .line 62
    iput-object v0, v3, Lin;->b:Ljava/lang/String;

    .line 63
    sput-object v3, Lun;->l:Lin;

    const/4 v0, -0x3

    .line 64
    new-instance v3, Lin;

    invoke-direct {v3}, Lin;-><init>()V

    .line 65
    iput v0, v3, Lin;->a:I

    const-string v0, "Timeout communicating with service."

    .line 66
    iput-object v0, v3, Lin;->b:Ljava/lang/String;

    .line 67
    sput-object v3, Lun;->m:Lin;

    .line 68
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 69
    iput v1, v0, Lin;->a:I

    const-string v3, "Client doesn\'t support subscriptions."

    .line 70
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    .line 71
    sput-object v0, Lun;->n:Lin;

    .line 72
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 73
    iput v1, v0, Lin;->a:I

    const-string v3, "Client doesn\'t support subscriptions update."

    .line 74
    iput-object v3, v0, Lin;->b:Ljava/lang/String;

    .line 75
    sput-object v0, Lun;->o:Lin;

    .line 76
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 77
    iput v1, v0, Lin;->a:I

    const-string v1, "Client doesn\'t support multi-item purchases."

    .line 78
    iput-object v1, v0, Lin;->b:Ljava/lang/String;

    .line 79
    sput-object v0, Lun;->p:Lin;

    .line 80
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    .line 81
    iput v2, v0, Lin;->a:I

    const-string v1, "Unknown feature"

    .line 82
    iput-object v1, v0, Lin;->b:Ljava/lang/String;

    return-void
.end method
